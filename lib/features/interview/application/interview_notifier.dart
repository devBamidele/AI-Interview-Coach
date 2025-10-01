import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/livekit_repository_impl.dart';
import '../domain/repositories/livekit_repository.dart';
import 'interview_state.dart';
import 'transcription_notifier.dart';

part 'interview_notifier.g.dart';

/// Notifier for managing interview connection state with code generation
@riverpod
class InterviewNotifier extends _$InterviewNotifier {
  Room? _room;

  @override
  InterviewState build() {
    // Register cleanup on dispose
    ref.onDispose(() => _disposeRoom());

    // Return initial disconnected state
    return const InterviewState.disconnected();
  }

  Future<void> connect({
    required String roomName,
    required String participantName,
  }) async {
    final repository = ref.read(liveKitRepositoryProvider);

    // Step 1: Get token
    state = const InterviewState.connecting('Requesting token...');

    final tokenResult = await repository.getToken(
      roomName: roomName,
      participantName: participantName,
    );

    await tokenResult.fold(
      (failure) async {
        state = InterviewState.failed(failure.message);
      },
      (token) async {
        // Step 2: Connect to room
        state = const InterviewState.connecting('Connecting to LiveKit...');

        final roomResult = await repository.connectToRoom(token);

        await roomResult.fold(
          (failure) async {
            state = InterviewState.failed(failure.message);
          },
          (room) async {
            _room = room;

            // Step 3: Setup media
            state = const InterviewState.connecting('Setting up media...');
            await _setupMedia(repository);
          },
        );
      },
    );
  }

  Future<void> _setupMedia(LiveKitRepository repository) async {
    if (_room == null) {
      state = const InterviewState.failed('Room not connected');
      return;
    }

    // Enable camera
    final cameraResult = await repository.enableCamera(_room!.localParticipant);

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
    await repository.enableMicrophone(_room!.localParticipant);

    // Start transcription service
    await _startTranscription();

    // Update to connected state
    state = InterviewState.connected(localVideoTrack: videoTrack);
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

  Future<void> disconnect() async {
    // Stop transcription
    try {
      final transcriptionNotifier = ref.read(transcriptionProvider.notifier);
      transcriptionNotifier.stopTranscription();
    } catch (e) {
      // ignore: avoid_print
      print('Failed to stop transcription: $e');
    }

    final repository = ref.read(liveKitRepositoryProvider);
    await repository.disconnect(_room);
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
