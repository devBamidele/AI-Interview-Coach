import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/interview_analysis.dart';

/// Repository interface for interview analysis operations
abstract class InterviewAnalysisRepository {
  /// Get interview analysis by interview ID
  Future<Either<Failure, InterviewAnalysis>> getAnalysis(String interviewId);

  /// Poll for interview analysis with exponential backoff
  Future<Either<Failure, InterviewAnalysis>> pollForAnalysis(
    String interviewId,
  );
}
