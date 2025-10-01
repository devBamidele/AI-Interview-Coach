import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/analysis_event.dart';
import '../../domain/entities/transcript_event.dart';
import '../../domain/repositories/transcription_repository.dart';
import '../datasources/transcription_websocket_datasource.dart';
import '../models/analysis_event_model.dart';
import '../models/transcript_event_model.dart';

/// Implementation of the transcription repository
class TranscriptionRepositoryImpl implements TranscriptionRepository {
  final TranscriptionWebSocketDataSource dataSource;
  final StreamController<Either<Failure, TranscriptEvent>>
  _transcriptController = StreamController.broadcast();
  final StreamController<Either<Failure, AnalysisEvent>> _analysisController =
      StreamController.broadcast();

  StreamSubscription? _messageSubscription;

  TranscriptionRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, void>> connect() async {
    try {
      await dataSource.connect(_getWebSocketUrl());

      // Listen to messages from datasource
      _messageSubscription = dataSource.messages.listen(
        (message) {
          switch (message.type) {
            case TranscriptionMessageType.transcript:
              final model = message.data as TranscriptEventModel;
              _transcriptController.add(Right(model.toEntity()));
              break;
            case TranscriptionMessageType.analysis:
              final model = message.data as AnalysisEventModel;
              _analysisController.add(Right(model.toEntity()));
              break;
            case TranscriptionMessageType.error:
              final error = WebSocketFailure(
                message.errorMessage ?? 'Unknown error',
              );
              _transcriptController.add(Left(error));
              _analysisController.add(Left(error));
              break;
            case TranscriptionMessageType.started:
            case TranscriptionMessageType.stopped:
              // Status messages - can be logged or ignored
              break;
            case TranscriptionMessageType.unknown:
              // Unknown message types - ignore silently
              break;
          }
        },
        onError: (error) {
          final failure = WebSocketFailure(error.toString());
          _transcriptController.add(Left(failure));
          _analysisController.add(Left(failure));
        },
      );

      return const Right(null);
    } catch (e) {
      return Left(WebSocketFailure(e.toString()));
    }
  }

  @override
  Either<Failure, void> start({
    required String roomName,
    required String participantIdentity,
  }) {
    try {
      dataSource.startTranscription(
        roomName: roomName,
        participantIdentity: participantIdentity,
      );
      return const Right(null);
    } catch (e) {
      return Left(WebSocketFailure(e.toString()));
    }
  }

  @override
  void stop() {
    dataSource.stopTranscription();
  }

  @override
  Stream<Either<Failure, TranscriptEvent>> get transcriptStream =>
      _transcriptController.stream;

  @override
  Stream<Either<Failure, AnalysisEvent>> get analysisStream =>
      _analysisController.stream;

  @override
  bool get isConnected => dataSource.isConnected;

  @override
  void dispose() {
    _messageSubscription?.cancel();
    _transcriptController.close();
    _analysisController.close();
    dataSource.dispose();
  }

  String _getWebSocketUrl() {
    // This should come from app config
    // For now, using a placeholder
    return 'ws://localhost:3001';
  }
}
