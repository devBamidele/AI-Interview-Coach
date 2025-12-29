import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/interview_analysis_repository_impl.dart';
import '../domain/entities/interview_analysis.dart';

part 'interview_detail_notifier.g.dart';

@riverpod
class InterviewDetailNotifier extends _$InterviewDetailNotifier {
  @override
  Future<InterviewAnalysis?> build(String interviewId) async {
    // Keep the provider alive for 10 minutes after last listener is removed
    // This prevents unnecessary refetching when navigating back to detail page
    final link = ref.keepAlive();
    Timer(const Duration(minutes: 10), link.close);

    final repository = ref.read(interviewAnalysisRepositoryProvider);

    // Always fetch full data from detail endpoint using JWT authentication
    // Cache only contains summary data (no transcript, no detailed analysis)
    final result = await repository.getAnalysis(interviewId);

    return result.fold(
      (failure) => throw Exception(failure.message),
      (analysis) => analysis,
    );
  }

  Future<void> refresh(String interviewId) async {
    state = const AsyncValue.loading();

    final repository = ref.read(interviewAnalysisRepositoryProvider);
    final result = await repository.getAnalysis(interviewId);

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
