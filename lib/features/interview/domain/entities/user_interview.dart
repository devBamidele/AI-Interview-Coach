import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_interview.freezed.dart';

/// Summary of a user's interview
@freezed
sealed class UserInterview with _$UserInterview {
  const factory UserInterview({
    required String id,
    required String status,
    required String createdAt,
    required double duration,
    String? recordingUrl,
    UserInfo? userId,
    UserInterviewMetrics? metrics,
    UserInterviewAIAnalysis? aiAnalysis,
  }) = _UserInterview;
}

/// User information in interview
@freezed
sealed class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String email,
    required String name,
  }) = _UserInfo;
}

/// Summary of metrics for list view
@freezed
sealed class UserInterviewMetrics with _$UserInterviewMetrics {
  const factory UserInterviewMetrics({
    required int averagePace,
    required int totalWords,
    required int fillerCount,
    required int pauseCount,
  }) = _UserInterviewMetrics;
}

/// Summary of AI analysis for list view
@freezed
sealed class UserInterviewAIAnalysis with _$UserInterviewAIAnalysis {
  const factory UserInterviewAIAnalysis({
    required double overallScore,
    required String summary,
    required double confidenceScore,
  }) = _UserInterviewAIAnalysis;
}

/// Response containing list of interviews
@freezed
sealed class UserInterviewsResponse with _$UserInterviewsResponse {
  const factory UserInterviewsResponse({
    required List<UserInterview> interviews,
    required int total,
  }) = _UserInterviewsResponse;
}
