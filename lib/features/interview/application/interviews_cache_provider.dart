import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/entities/user_interview.dart';

part 'interviews_cache_provider.g.dart';

/// Cache provider for storing fetched interviews to avoid duplicate API calls
/// Maps interview ID to UserInterview entity
@Riverpod(keepAlive: true)
class InterviewsCache extends _$InterviewsCache {
  @override
  Map<String, UserInterview> build() {
    return {};
  }

  /// Add or update a single interview in the cache
  void upsert(UserInterview interview) {
    state = {...state, interview.id: interview};
  }

  /// Add or update multiple interviews in the cache
  void upsertMany(List<UserInterview> interviews) {
    final newEntries = {for (var interview in interviews) interview.id: interview};
    state = {...state, ...newEntries};
  }

  /// Get an interview from cache by ID
  UserInterview? get(String interviewId) {
    return state[interviewId];
  }

  /// Check if an interview exists in cache
  bool has(String interviewId) {
    return state.containsKey(interviewId);
  }

  /// Clear the entire cache
  void clear() {
    state = {};
  }

  /// Remove a specific interview from cache
  void remove(String interviewId) {
    final newState = Map<String, UserInterview>.from(state);
    newState.remove(interviewId);
    state = newState;
  }
}
