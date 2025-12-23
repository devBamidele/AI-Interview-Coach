import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_interview.freezed.dart';

/// User interview summary entity from backend
/// Lightweight version for list views (80-90% smaller than full data)
/// Backend: GET /api/interviews/my-interviews/summary
@freezed
sealed class UserInterview with _$UserInterview {
  const factory UserInterview({
    required String id,
    required String status,
    required String createdAt,
    required double duration,
    String? caseQuestion,
    String? difficulty,
    String? candidateAnswer,
    // Summary scores only (not full analysis breakdown)
    double? overallWeightedScore,
    String? overallLabel,
  }) = _UserInterview;

  const UserInterview._();

  /// Check if this is a market sizing interview
  bool get isMarketSizing => overallWeightedScore != null && overallLabel != null;
}

/// Response containing list of interviews
@freezed
sealed class UserInterviewsResponse with _$UserInterviewsResponse {
  const factory UserInterviewsResponse({
    required List<UserInterview> interviews,
    required int total,
  }) = _UserInterviewsResponse;
}
