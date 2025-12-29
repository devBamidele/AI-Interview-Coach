import 'dart:async';

import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/room_connection_params.dart';
import '../data/models/token_response_dto.dart';
import '../data/repositories/interview_analysis_repository_impl.dart';
import '../data/repositories/livekit_repository_impl.dart';
import '../domain/repositories/interview_analysis_repository.dart';
import '../domain/repositories/livekit_repository.dart';
import '../domain/repositories/transcription_repository.dart';
import 'interview_state.dart';
import 'network_quality_notifier.dart';
import 'transcription_notifier.dart';

part 'interview_notifier.g.dart';

/// Notifier for managing interview connection state with code generation
@riverpod
class InterviewNotifier extends _$InterviewNotifier {
  Room? _room;
  late final LiveKitRepository _repository;
  late final InterviewAnalysisRepository _analysisRepository;
  StreamSubscription? _transcriptionSubscription;
  EventsListener<RoomEvent>? _roomEventListener;

  /// Public getter for the room
  Room? get room => _room;

  @override
  InterviewState build() {
    _repository = ref.read(liveKitRepositoryProvider);
    _analysisRepository = ref.read(interviewAnalysisRepositoryProvider);

    // Register cleanup on dispose
    ref.onDispose(() {
      _disposeRoom();
      _transcriptionSubscription?.cancel();
    });

    // Return initial disconnected state
    return const InterviewState.disconnected();
  }

  TokenResponseDto? _currentTokens; // Store tokens for transcription service

  Future<void> connect(RoomConnectionParams params) async {
    // Step 1: Get token
    state = const InterviewState.connecting('Requesting token...');

    final tokenResult = await _repository.getToken(params);

    await tokenResult.fold(
      (failure) async {
        state = InterviewState.failed(failure.toString());
      },
      (token) async {
        // Store tokens for later use (transcription service needs them)
        _currentTokens = token;

        // Step 2: Connect to room
        state = const InterviewState.connecting('Connecting to LiveKit...');

        final roomResult = await _repository.connectToRoom(
          token.livekitToken, // Updated field name
          token.url,
        );

        await roomResult.fold(
          (failure) async {
            state = InterviewState.failed(failure.toString());
          },
          (room) async {
            _room = room;

            // Step 3: Setup media
            state = const InterviewState.connecting('Setting up media...');
            await _setupMedia();
          },
        );
      },
    );
  }

  Future<void> _setupMedia() async {
    if (_room == null) {
      state = const InterviewState.failed('Room not connected');
      return;
    }

    // Enable camera
    final cameraResult = await _repository.enableCamera(
      _room!.localParticipant,
    );

    LocalVideoTrack? videoTrack;
    await cameraResult.fold(
      (failure) async {
        // Camera failure is not critical, continue without it
      },
      (track) async {
        videoTrack = track;
      },
    );

    // Enable microphone
    await _repository.enableMicrophone(_room!.localParticipant);

    // Start transcription service
    await _startTranscription();

    // Set up room metadata listener
    _setupRoomMetadataListener();

    // Update to connected state with initial metadata
    final identity = _room?.localParticipant?.identity;
    final metadata = _room?.metadata;
    state = InterviewState.connected(
      localVideoTrack: videoTrack,
      participantIdentity: identity,
      roomMetadata: metadata,
    );

    // Start network quality monitoring
    ref.read(networkQualityProvider.notifier).startMonitoring(_room!);
  }

  void _setupRoomMetadataListener() {
    if (_room == null) return;

    // Listen for room metadata changes
    _roomEventListener = _room!.createListener();
    _roomEventListener!.on<RoomMetadataChangedEvent>((event) {
      // Update state with new metadata when it changes
      if (state is Connected) {
        final currentState = state as Connected;
        state = InterviewState.connected(
          localVideoTrack: currentState.localVideoTrack,
          participantIdentity: currentState.participantIdentity,
          roomMetadata: event.metadata,
        );
      }
    });
  }

  Future<void> _startTranscription() async {
    if (_room == null || _currentTokens == null) return;

    try {
      final transcriptionNotifier = ref.read(transcriptionProvider.notifier);

      // Connect to transcription service with JWT token
      // Use server-provided roomName and participantIdentity from tokens
      await transcriptionNotifier.connectWithToken(
        transcriptionToken: _currentTokens!.transcriptionToken,
        roomName: _currentTokens!.roomName,
        participantIdentity: _currentTokens!.participantIdentity,
      );
    } catch (e) {
      // Transcription is not critical, continue without it
      // ignore: avoid_print
      print('Failed to start transcription: $e');
    }
  }

  Future<void> completeInterview() async {
    state = const InterviewState.completing('Finishing interview...');

    try {
      // Send complete action to transcription service
      final transcriptionNotifier = ref.read(transcriptionProvider.notifier);
      transcriptionNotifier.completeInterview();

      // Wait for session_complete message with interviewId and accessToken
      final sessionData = await _waitForSessionComplete();

      if (sessionData == null) {
        state = const InterviewState.analysisFailed(
          'Failed to complete interview. Please try again.',
        );
        return;
      }

      // Disconnect from LiveKit
      await _repository.disconnect(_room);
      _room = null;

      // Start analyzing
      state = InterviewState.analyzing(sessionData.interviewId);

      // Poll for analysis with exponential backoff using the interview ID
      final analysisResult = await _analysisRepository.pollForAnalysis(
        sessionData.interviewId,
      );

      analysisResult.fold(
        (failure) {
          state = InterviewState.analysisFailed(failure.toString());
        },
        (analysis) {
          if (analysis.status == 'completed') {
            state = InterviewState.analysisComplete(
              analysis,
              sessionData.interviewId,
            );
          } else if (analysis.status == 'failed') {
            state = const InterviewState.analysisFailed(
              'Interview analysis failed. Please try again.',
            );
          } else {
            state = const InterviewState.analysisFailed(
              'Analysis is taking longer than expected. Please check back later.',
            );
          }
        },
      );
    } catch (e) {
      state = InterviewState.analysisFailed(
        'Failed to complete interview: ${e.toString()}',
      );
    }
  }

  Future<SessionCompleteData?> _waitForSessionComplete() async {
    // The session complete data will come through the WebSocket message
    // We need to create a stream listener that waits for it
    final completer = Completer<SessionCompleteData?>();

    // Listen for session complete events through the repository abstraction
    try {
      final repository = ref.read(transcriptionRepositoryProvider);

      _transcriptionSubscription = repository.sessionCompleteStream.listen(
        (sessionData) {
          if (!completer.isCompleted) {
            completer.complete(sessionData);
          }
        },
        onError: (_) {
          if (!completer.isCompleted) {
            completer.complete(null);
          }
        },
      );
    } catch (e) {
      if (!completer.isCompleted) {
        completer.complete(null);
      }
    }

    // Timeout after 10 seconds
    return completer.future.timeout(
      const Duration(seconds: 10),
      onTimeout: () => null,
    );
  }

  Future<void> disconnect() async {
    // Stop network quality monitoring
    ref.read(networkQualityProvider.notifier).stopMonitoring();

    // Stop transcription
    try {
      ref.read(transcriptionProvider.notifier).stopTranscription();
    } catch (e) {
      // ignore: avoid_print
      print('Failed to stop transcription: $e');
    }

    await _repository.disconnect(_room);
    _room = null;
    state = const InterviewState.disconnected();
  }

  void _disposeRoom() {
    if (_room != null) {
      _roomEventListener?.dispose();
      _roomEventListener = null;
      _room!.disconnect();
      _room = null;
    }
  }
}
