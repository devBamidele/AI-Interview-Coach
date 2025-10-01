import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/transcript_event.dart';
import '../entities/analysis_event.dart';

/// Repository interface for transcription operations
abstract class TranscriptionRepository {
  /// Connect to transcription service
  Future<Either<Failure, void>> connect();

  /// Start transcription for a room and participant
  Either<Failure, void> start({
    required String roomName,
    required String participantIdentity,
  });

  /// Stop transcription
  void stop();

  /// Stream of transcript events
  Stream<Either<Failure, TranscriptEvent>> get transcriptStream;

  /// Stream of analysis events
  Stream<Either<Failure, AnalysisEvent>> get analysisStream;

  /// Check if connected
  bool get isConnected;

  /// Dispose resources
  void dispose();
}
