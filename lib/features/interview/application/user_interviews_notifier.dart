import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/user_interviews_repository_impl.dart';
import '../domain/entities/user_interview.dart';
import '../domain/repositories/user_interviews_repository.dart';
import 'interview_token_store.dart';

part 'user_interviews_notifier.g.dart';

@riverpod
class UserInterviewsNotifier extends _$UserInterviewsNotifier {
  late final UserInterviewsRepository _repository;

  @override
  AsyncValue<UserInterviewsResponse?> build() {
    _repository = ref.read(userInterviewsRepositoryProvider);
    return const AsyncValue.data(null);
  }

  /// Fetch user interviews using any available access token
  /// The token gives access to all interviews for the user
  Future<void> fetchUserInterviews() async {
    state = const AsyncValue.loading();

    // Get any available access token
    final tokenStore = ref.read(interviewTokenStoreProvider);
    final accessToken = await tokenStore.getAnyToken();

    if (accessToken == null) {
      state = AsyncValue.error(
        'No interview access token found. Please complete an interview first.',
        StackTrace.current,
      );
      return;
    }

    final result = await _repository.getUserInterviews(accessToken);

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
