import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/entities/transcript_event.dart';
import '../domain/repositories/transcription_repository.dart';
import '../data/datasources/transcription_websocket_datasource.dart';
import '../data/repositories/transcription_repository_impl.dart';

part 'transcription_notifier.freezed.dart';
part 'transcription_notifier.g.dart';

/// State for transcription feature
@freezed
sealed class TranscriptionState with _$TranscriptionState {
  const factory TranscriptionState({
    @Default(false) bool isConnected,
    @Default(false) bool isTranscribing,
    @Default('') String fullTranscript,
    @Default([]) List<TranscriptEvent> transcriptEvents,
    String? error,
  }) = _TranscriptionState;
}

/// Provider for transcription repository
@riverpod
TranscriptionRepository transcriptionRepository(Ref ref) {
  final dataSource = TranscriptionWebSocketDataSourceImpl();
  return TranscriptionRepositoryImpl(dataSource: dataSource);
}

/// Notifier for managing transcription state
@riverpod
class TranscriptionNotifier extends _$TranscriptionNotifier {
  TranscriptionRepository? _repository;
  StreamSubscription? _transcriptSubscription;

  @override
  TranscriptionState build() {
    _repository = ref.watch(transcriptionRepositoryProvider);

    // Dispose subscriptions when provider is disposed
    ref.onDispose(() {
      _transcriptSubscription?.cancel();
      _repository?.dispose();
    });

    return const TranscriptionState();
  }

  /// Connect to transcription service (legacy - without JWT)
  Future<void> connect() async {
    if (_repository == null) return;

    final result = await _repository!.connect();

    result.fold(
      (failure) {
        state = state.copyWith(isConnected: false, error: failure.toString());
      },
      (_) {
        state = state.copyWith(isConnected: true, error: null);

        // Subscribe to transcript stream
        _transcriptSubscription = _repository!.transcriptStream.listen((
          either,
        ) {
          either.fold(
            (failure) {
              state = state.copyWith(error: failure.toString());
            },
            (transcript) {
              _handleTranscript(transcript);
            },
          );
        });
      },
    );
  }

  /// Connect to transcription service with JWT authentication
  /// Automatically starts transcription with server-provided values
  Future<void> connectWithToken({
    required String transcriptionToken,
    required String roomName,
    required String participantIdentity,
  }) async {
    if (_repository == null) return;

    final result = await _repository!.connectWithToken(
      transcriptionToken: transcriptionToken,
      roomName: roomName,
      participantIdentity: participantIdentity,
    );

    result.fold(
      (failure) {
        state = state.copyWith(isConnected: false, error: failure.toString());
      },
      (_) {
        state = state.copyWith(
          isConnected: true,
          isTranscribing: true, // Already started by connectWithToken
          error: null,
        );

        // Subscribe to transcript stream
        _transcriptSubscription = _repository!.transcriptStream.listen((
          either,
        ) {
          either.fold(
            (failure) {
              state = state.copyWith(error: failure.toString());
            },
            (transcript) {
              _handleTranscript(transcript);
            },
          );
        });
      },
    );
  }

  /// Start transcription for a room and participant
  void startTranscription({
    required String roomName,
    required String participantIdentity,
  }) {
    if (_repository == null || !state.isConnected) {
      state = state.copyWith(error: 'Not connected to transcription service');
      return;
    }

    final result = _repository!.start(
      roomName: roomName,
      participantIdentity: participantIdentity,
    );

    result.fold(
      (failure) {
        state = state.copyWith(error: failure.toString());
      },
      (_) {
        state = state.copyWith(isTranscribing: true, error: null);
      },
    );
  }

  /// Stop transcription (cancel interview)
  void stopTranscription() {
    _repository?.stop();
    state = state.copyWith(isTranscribing: false);
  }

  /// Complete interview (end and trigger analysis)
  void completeInterview() {
    _repository?.complete();
    state = state.copyWith(isTranscribing: false);
  }

  /// Clear transcript
  void clearTranscript() {
    state = state.copyWith(fullTranscript: '', transcriptEvents: []);
  }

  void _handleTranscript(TranscriptEvent event) {
    if (event.isFinal) {
      // Add to full transcript
      final newTranscript = state.fullTranscript.isEmpty
          ? event.text
          : '${state.fullTranscript} ${event.text}';

      state = state.copyWith(
        fullTranscript: newTranscript,
        transcriptEvents: [...state.transcriptEvents, event],
      );
    }
  }
}
