import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/runner/service_runner.dart';
import '../../domain/entities/interview_analysis.dart';
import '../../domain/repositories/interview_analysis_repository.dart';
import '../datasources/interview_analysis_remote_datasource.dart';

part 'interview_analysis_repository_impl.g.dart';

@riverpod
InterviewAnalysisRepository interviewAnalysisRepository(Ref ref) {
  return InterviewAnalysisRepositoryImpl(ref);
}

/// Implementation of InterviewAnalysisRepository with polling support
class InterviewAnalysisRepositoryImpl extends ServiceRunner
    implements InterviewAnalysisRepository {
  final InterviewAnalysisRemoteDataSource _remoteDataSource;

  InterviewAnalysisRepositoryImpl(Ref ref)
    : _remoteDataSource = ref.read(interviewAnalysisRemoteDataSourceProvider),
      super(ref.read(networkInfoProvider));

  @override
  Future<Either<Failure, InterviewAnalysis>> getAnalysis(String interviewId) {
    return run(() async {
      final dto = await _remoteDataSource.getAnalysis(interviewId);
      return dto.toEntity();
    }, errorTitle: 'Analysis Fetch Failed');
  }

  @override
  Future<Either<Failure, InterviewAnalysis>> pollForAnalysis(
    String interviewId,
  ) async {
    // Exponential backoff: 1s, 2s, 3s, 5s, 5s, 5s, 10s, 10s, 10s, 15s (total ~66s)
    const delays = [1, 2, 3, 5, 5, 5, 10, 10, 10, 15];
    const maxAttempts = 10;

    for (int i = 0; i < maxAttempts; i++) {
      // Wait before attempting (skip first iteration)
      if (i > 0) {
        await Future.delayed(Duration(seconds: delays[i - 1]));
      }

      final result = await getAnalysis(interviewId);

      // Check if we got the analysis
      final shouldContinue = await result.fold(
        (failure) async {
          // On network failure, keep trying
          return i < maxAttempts - 1;
        },
        (analysis) async {
          // Check status
          if (analysis.status == 'completed') {
            // Success! Return the analysis
            return false; // Stop polling
          } else if (analysis.status == 'failed') {
            // Analysis failed on backend
            return false; // Stop polling
          }
          // Still processing, continue polling
          return i < maxAttempts - 1;
        },
      );

      if (!shouldContinue) {
        return result;
      }
    }

    // Timeout after all attempts
    return const Left(
      ServerFailure(
        'Analysis is taking longer than expected. Please try again later.',
      ),
    );
  }
}
