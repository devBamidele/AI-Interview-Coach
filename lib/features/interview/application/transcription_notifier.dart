import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/entities/transcript_event.dart';
import '../domain/entities/analysis_event.dart';
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
    AnalysisEvent? latestAnalysis,
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
  StreamSubscription? _analysisSubscription;

  @override
  TranscriptionState build() {
    _repository = ref.watch(transcriptionRepositoryProvider);

    // Dispose subscriptions when provider is disposed
    ref.onDispose(() {
      _transcriptSubscription?.cancel();
      _analysisSubscription?.cancel();
      _repository?.dispose();
    });

    return const TranscriptionState();
  }

  /// Connect to transcription service
  Future<void> connect() async {
    if (_repository == null) return;

    final result = await _repository!.connect();

    result.fold(
      (failure) {
        state = state.copyWith(
          isConnected: false,
          error: failure.message,
        );
      },
      (_) {
        state = state.copyWith(
          isConnected: true,
          error: null,
        );

        // Subscribe to transcript stream
        _transcriptSubscription = _repository!.transcriptStream.listen((either) {
          either.fold(
            (failure) {
              state = state.copyWith(error: failure.message);
            },
            (transcript) {
              _handleTranscript(transcript);
            },
          );
        });

        // Subscribe to analysis stream
        _analysisSubscription = _repository!.analysisStream.listen((either) {
          either.fold(
            (failure) {
              state = state.copyWith(error: failure.message);
            },
            (analysis) {
              _handleAnalysis(analysis);
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
      state = state.copyWith(
        error: 'Not connected to transcription service',
      );
      return;
    }

    final result = _repository!.start(
      roomName: roomName,
      participantIdentity: participantIdentity,
    );

    result.fold(
      (failure) {
        state = state.copyWith(error: failure.message);
      },
      (_) {
        state = state.copyWith(
          isTranscribing: true,
          error: null,
        );
      },
    );
  }

  /// Stop transcription
  void stopTranscription() {
    _repository?.stop();
    state = state.copyWith(
      isTranscribing: false,
    );
  }

  /// Clear transcript
  void clearTranscript() {
    state = state.copyWith(
      fullTranscript: '',
      transcriptEvents: [],
      latestAnalysis: null,
    );
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

  void _handleAnalysis(AnalysisEvent event) {
    state = state.copyWith(
      latestAnalysis: event,
    );
  }
}
