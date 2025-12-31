import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entities/user_interview.dart';

part 'user_interviews_state.freezed.dart';

/// State for managing paginated user interviews with infinite scroll
@freezed
sealed class UserInterviewsState with _$UserInterviewsState {
  const factory UserInterviewsState({
    required List<UserInterview> interviews,
    required int total,
    required int currentPage,
    required bool hasNextPage,
    required bool isLoadingMore,
  }) = _UserInterviewsState;

  const UserInterviewsState._();

  bool get isEmpty => interviews.isEmpty;
  bool get isNotEmpty => interviews.isNotEmpty;
}
