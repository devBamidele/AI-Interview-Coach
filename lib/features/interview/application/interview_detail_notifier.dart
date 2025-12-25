import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/interview_analysis_repository_impl.dart';
import '../domain/entities/interview_analysis.dart';
import '../domain/repositories/interview_analysis_repository.dart';

part 'interview_detail_notifier.g.dart';

@riverpod
class InterviewDetailNotifier extends _$InterviewDetailNotifier {
  late final InterviewAnalysisRepository _repository;

  @override
  Future<InterviewAnalysis?> build(String interviewId) async {
    _repository = ref.read(interviewAnalysisRepositoryProvider);

    // Always fetch full data from detail endpoint using JWT authentication
    // Cache only contains summary data (no transcript, no detailed analysis)
    final result = await _repository.getAnalysis(interviewId);

    return result.fold((_) => null, (analysis) => analysis);
  }

  Future<void> refresh(String interviewId) async {
    state = const AsyncValue.loading();

    final result = await _repository.getAnalysis(interviewId);

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (analysis) {
        state = AsyncValue.data(analysis);
      },
    );
  }
}
