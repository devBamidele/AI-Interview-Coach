import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/user_interviews_repository_impl.dart';
import '../domain/entities/user_interview.dart';
import '../domain/repositories/user_interviews_repository.dart';

part 'user_interviews_notifier.g.dart';

@riverpod
class UserInterviewsNotifier extends _$UserInterviewsNotifier {
  late final UserInterviewsRepository _repository;

  @override
  AsyncValue<UserInterviewsResponse?> build() {
    _repository = ref.read(userInterviewsRepositoryProvider);

    // Keep the provider alive for 5 minutes after last listener is removed
    // This prevents unnecessary refetching when navigating back to the page
    final link = ref.keepAlive();
    Timer(const Duration(minutes: 10), link.close);

    return const AsyncValue.data(null);
  }

  /// Fetch user interviews using JWT authentication
  Future<void> fetchUserInterviews() async {
    state = const AsyncValue.loading();

    final result = await _repository.getUserInterviews();

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (response) {
        // Summary data fetched - no caching needed
        // Detail page will fetch full data when needed
        state = AsyncValue.data(response);
      },
    );
  }

  void clear() {
    state = const AsyncValue.data(null);
  }
}
