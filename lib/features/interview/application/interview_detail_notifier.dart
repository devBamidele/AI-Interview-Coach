import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/interview_analysis_repository_impl.dart';
import '../domain/entities/interview_analysis.dart';
import '../domain/repositories/interview_analysis_repository.dart';
import 'interview_token_store.dart';

part 'interview_detail_notifier.g.dart';

@riverpod
class InterviewDetailNotifier extends _$InterviewDetailNotifier {
  late final InterviewAnalysisRepository _repository;

  @override
  Future<InterviewAnalysis?> build(String interviewId) async {
    _repository = ref.read(interviewAnalysisRepositoryProvider);

    // Get the access token for this interview
    final tokenStore = ref.read(interviewTokenStoreProvider);
    final accessToken = await tokenStore.getToken(interviewId);

    if (accessToken == null) {
      // No token found - cannot fetch interview
      state = AsyncValue.error(
        'Interview access token not found. Please complete the interview again.',
        StackTrace.current,
      );
      return null;
    }

    // Always fetch full data from detail endpoint
    // Cache only contains summary data (no transcript, no detailed analysis)
    final result = await _repository.getAnalysis(accessToken);

    return result.fold((_) => null, (analysis) => analysis);
  }

  Future<void> refresh(String interviewId) async {
    state = const AsyncValue.loading();

    // Get the access token for this interview
    final tokenStore = ref.read(interviewTokenStoreProvider);
    final accessToken = await tokenStore.getToken(interviewId);

    if (accessToken == null) {
      state = AsyncValue.error(
        'Interview access token not found',
        StackTrace.current,
      );
      return;
    }

    final result = await _repository.getAnalysis(accessToken);

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
