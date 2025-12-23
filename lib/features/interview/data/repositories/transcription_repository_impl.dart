import 'dart:async';

import 'package:ai_interview_mvp/core/constants/app_config.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/transcript_event.dart';
import '../../domain/repositories/transcription_repository.dart';
import '../datasources/transcription_websocket_datasource.dart';
import '../models/transcript_event_model.dart';

/// Implementation of the transcription repository
class TranscriptionRepositoryImpl implements TranscriptionRepository {
  final TranscriptionWebSocketDataSource dataSource;

  final StreamController<Either<Failure, TranscriptEvent>>
  _transcriptController = StreamController.broadcast();

  final StreamController<SessionCompleteData?> _sessionCompleteController =
      StreamController.broadcast();

  StreamSubscription? _messageSubscription;

  TranscriptionRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, void>> connect() async {
    try {
      await dataSource.connect(AppConfig.transcriptionWsUrl);

      // Listen to messages from datasource
      _messageSubscription = dataSource.messages.listen(
        (message) {
          switch (message.type) {
            case TranscriptionMessageType.transcript:
              final model = message.data as TranscriptEventModel;
              _transcriptController.add(Right(model.toEntity()));
              break;
            case TranscriptionMessageType.error:
              final error = WebSocketFailure(
                message.errorMessage ?? 'Unknown error',
              );
              _transcriptController.add(Left(error));
              break;
            case TranscriptionMessageType.sessionComplete:
              final data = message.data as Map<String, dynamic>;
              final interviewId = data['interviewId'] as String?;
              final accessToken = data['accessToken'] as String?;

              if (interviewId != null && accessToken != null) {
                _sessionCompleteController.add(
                  SessionCompleteData(
                    interviewId: interviewId,
                    accessToken: accessToken,
                  ),
                );
              } else {
                _sessionCompleteController.add(null);
              }
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
  void complete() {
    dataSource.completeInterview();
  }

  @override
  Stream<Either<Failure, TranscriptEvent>> get transcriptStream =>
      _transcriptController.stream;

  @override
  Stream<SessionCompleteData?> get sessionCompleteStream =>
      _sessionCompleteController.stream;

  @override
  bool get isConnected => dataSource.isConnected;

  @override
  void dispose() {
    _messageSubscription?.cancel();
    _transcriptController.close();
    _sessionCompleteController.close();
    dataSource.dispose();
  }
}
