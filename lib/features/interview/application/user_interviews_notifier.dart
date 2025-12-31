import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/user_interviews_repository_impl.dart';
import '../domain/repositories/user_interviews_repository.dart';
import 'user_interviews_state.dart';

part 'user_interviews_notifier.g.dart';

@riverpod
class UserInterviewsNotifier extends _$UserInterviewsNotifier {
  late final UserInterviewsRepository _repository;
  final int _pageSize = 20;

  @override
  AsyncValue<UserInterviewsState?> build() {
    _repository = ref.read(userInterviewsRepositoryProvider);

    // Keep the provider alive for 10 minutes after last listener is removed
    // This prevents unnecessary refetching when navigating back to the page
    final link = ref.keepAlive();
    Timer(const Duration(minutes: 10), link.close);

    return const AsyncValue.data(null);
  }

  /// Fetch user interviews using JWT authentication (initial load - page 1)
  Future<void> fetchUserInterviews() async {
    state = const AsyncValue.loading();

    final result = await _repository.getUserInterviews(page: 1, limit: _pageSize);

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (response) {
        state = AsyncValue.data(UserInterviewsState(
          interviews: response.interviews,
          total: response.total,
          currentPage: response.page,
          hasNextPage: response.hasNextPage,
          isLoadingMore: false,
        ));
      },
    );
  }

  /// Load next page and append to existing list (for infinite scroll)
  Future<void> loadNextPage() async {
    final currentState = state.value;
    if (currentState == null || !currentState.hasNextPage || currentState.isLoadingMore) {
      return; // Prevent duplicate loads
    }

    // Set loading flag without replacing entire state
    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

    final result = await _repository.getUserInterviews(
      page: currentState.currentPage + 1,
      limit: _pageSize,
    );

    result.fold(
      (failure) {
        // Revert loading state on error, keep existing data
        state = AsyncValue.data(currentState.copyWith(isLoadingMore: false));
      },
      (response) {
        // Append new interviews to existing list
        state = AsyncValue.data(UserInterviewsState(
          interviews: [...currentState.interviews, ...response.interviews],
          total: response.total,
          currentPage: response.page,
          hasNextPage: response.hasNextPage,
          isLoadingMore: false,
        ));
      },
    );
  }

  /// Refresh - clear and reload from page 1 (for pull-to-refresh)
  Future<void> refresh() async {
    await fetchUserInterviews();
  }

  void clear() {
    state = const AsyncValue.data(null);
  }
}
