import 'dart:async';

import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/datasources/transcription_websocket_datasource.dart';
import '../data/models/room_connection_params.dart';
import '../data/repositories/interview_analysis_repository_impl.dart';
import '../data/repositories/livekit_repository_impl.dart';
import '../data/repositories/transcription_repository_impl.dart';
import '../domain/repositories/interview_analysis_repository.dart';
import '../domain/repositories/livekit_repository.dart';
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

  Future<void> connect(RoomConnectionParams params) async {
    // Step 1: Get token
    state = const InterviewState.connecting('Requesting token...');

    final tokenResult = await _repository.getToken(params);

    await tokenResult.fold(
      (failure) async {
        state = InterviewState.failed(failure.toString());
      },
      (token) async {
        // Step 2: Connect to room
        state = const InterviewState.connecting('Connecting to LiveKit...');

        final roomResult = await _repository.connectToRoom(
          token.token,
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

    // Update to connected state
    final identity = _room?.localParticipant?.identity;
    state = InterviewState.connected(
      localVideoTrack: videoTrack,
      participantIdentity: identity,
    );

    // Start network quality monitoring
    ref.read(networkQualityProvider.notifier).startMonitoring(_room!);
  }

  Future<void> _startTranscription() async {
    if (_room == null) return;

    try {
      final transcriptionNotifier = ref.read(transcriptionProvider.notifier);

      // Connect to transcription service
      await transcriptionNotifier.connect();

      // Start transcription for this room and participant
      final identity = _room?.localParticipant?.identity;
      if (identity != null) {
        transcriptionNotifier.startTranscription(
          roomName: _room!.name ?? '',
          participantIdentity: identity,
        );
      }
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

      // Wait for session_complete message with interviewId
      final interviewId = await _waitForInterviewId();

      if (interviewId == null) {
        state = const InterviewState.analysisFailed(
          'Failed to complete interview. Please try again.',
        );
        return;
      }

      // Disconnect from LiveKit
      await _repository.disconnect(_room);
      _room = null;

      // Start analyzing
      state = InterviewState.analyzing(interviewId);

      // Poll for analysis with exponential backoff
      final analysisResult = await _analysisRepository.pollForAnalysis(
        interviewId,
      );

      analysisResult.fold(
        (failure) {
          state = InterviewState.analysisFailed(failure.toString());
        },
        (analysis) {
          if (analysis.status == 'completed') {
            state = InterviewState.analysisComplete(analysis, interviewId);
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

  Future<String?> _waitForInterviewId() async {
    // The interviewId will come through the WebSocket message
    // We need to create a stream listener that waits for it
    final completer = Completer<String?>();

    // Access the websocket datasource directly to listen for session_complete
    try {
      final repository = ref.read(transcriptionRepositoryProvider);
      final dataSource = (repository as TranscriptionRepositoryImpl).dataSource;

      _transcriptionSubscription = dataSource.messages.listen((message) {
        if (message.type == TranscriptionMessageType.sessionComplete) {
          final data = message.data as Map<String, dynamic>;
          final interviewId = data['interviewId'] as String?;
          if (!completer.isCompleted) {
            completer.complete(interviewId);
          }
        }
      });
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
      _room!.disconnect();
      _room = null;
    }
  }
}
