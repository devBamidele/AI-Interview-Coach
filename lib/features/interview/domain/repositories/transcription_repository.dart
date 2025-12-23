import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/transcript_event.dart';

/// Session complete data containing interview ID and access token
class SessionCompleteData {
  final String interviewId;
  final String accessToken;

  const SessionCompleteData({
    required this.interviewId,
    required this.accessToken,
  });
}

/// Repository interface for transcription operations
abstract class TranscriptionRepository {
  /// Connect to transcription service
  Future<Either<Failure, void>> connect();

  /// Start transcription for a room and participant
  Either<Failure, void> start({
    required String roomName,
    required String participantIdentity,
  });

  /// Stop transcription (cancel interview)
  void stop();

  /// Complete interview (end interview and trigger analysis)
  void complete();

  /// Stream of transcript events
  Stream<Either<Failure, TranscriptEvent>> get transcriptStream;

  /// Stream of session complete events with interview ID and access token
  Stream<SessionCompleteData?> get sessionCompleteStream;

  /// Check if connected
  bool get isConnected;

  /// Dispose resources
  void dispose();
}
