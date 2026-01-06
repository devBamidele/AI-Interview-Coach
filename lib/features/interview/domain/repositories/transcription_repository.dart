import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/transcript_event.dart';

/// Session complete data containing interview ID
class SessionCompleteData {
  final String interviewId;

  const SessionCompleteData({
    required this.interviewId,
  });
}

/// Repository interface for transcription operations
abstract class TranscriptionRepository {
  /// Connect to transcription service (legacy - without JWT)
  Future<Either<Failure, void>> connect();

  /// Connect to transcription service with JWT authentication
  /// Automatically starts transcription with server-provided values
  Future<Either<Failure, void>> connectWithToken({
    required String transcriptionToken,
    required String roomName,
    required String participantIdentity,
  });

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
