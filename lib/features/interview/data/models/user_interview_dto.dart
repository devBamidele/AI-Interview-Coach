import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_interview.dart';

part 'user_interview_dto.freezed.dart';
part 'user_interview_dto.g.dart';

/// DTO for user interview from backend
@freezed
sealed class UserInterviewDto with _$UserInterviewDto {
  const UserInterviewDto._();

  const factory UserInterviewDto({
    required String id,
    required String status,
    required String createdAt,
    required double duration,
    String? recordingUrl,
    UserInfoDto? userId,
    UserInterviewMetricsDto? metrics,
    UserInterviewAIAnalysisDto? aiAnalysis,
  }) = _UserInterviewDto;

  factory UserInterviewDto.fromJson(Map<String, dynamic> json) =>
      _$UserInterviewDtoFromJson(json);

  UserInterview toEntity() => UserInterview(
        id: id,
        status: status,
        createdAt: createdAt,
        duration: duration,
        recordingUrl: recordingUrl,
        userId: userId?.toEntity(),
        metrics: metrics?.toEntity(),
        aiAnalysis: aiAnalysis?.toEntity(),
      );
}

@freezed
sealed class UserInfoDto with _$UserInfoDto {
  const UserInfoDto._();

  const factory UserInfoDto({
    required String email,
    required String name,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDtoFromJson(json);

  UserInfo toEntity() => UserInfo(email: email, name: name);
}

@freezed
sealed class UserInterviewMetricsDto with _$UserInterviewMetricsDto {
  const UserInterviewMetricsDto._();

  const factory UserInterviewMetricsDto({
    required int averagePace,
    required int totalWords,
    required int fillerCount,
    required int pauseCount,
  }) = _UserInterviewMetricsDto;

  factory UserInterviewMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$UserInterviewMetricsDtoFromJson(json);

  UserInterviewMetrics toEntity() => UserInterviewMetrics(
        averagePace: averagePace,
        totalWords: totalWords,
        fillerCount: fillerCount,
        pauseCount: pauseCount,
      );
}

@freezed
sealed class UserInterviewAIAnalysisDto with _$UserInterviewAIAnalysisDto {
  const UserInterviewAIAnalysisDto._();

  const factory UserInterviewAIAnalysisDto({
    required double overallScore,
    required String summary,
    required double confidenceScore,
  }) = _UserInterviewAIAnalysisDto;

  factory UserInterviewAIAnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$UserInterviewAIAnalysisDtoFromJson(json);

  UserInterviewAIAnalysis toEntity() => UserInterviewAIAnalysis(
        overallScore: overallScore,
        summary: summary,
        confidenceScore: confidenceScore,
      );
}

@freezed
sealed class UserInterviewsResponseDto with _$UserInterviewsResponseDto {
  const UserInterviewsResponseDto._();

  const factory UserInterviewsResponseDto({
    required List<UserInterviewDto> interviews,
    required int total,
  }) = _UserInterviewsResponseDto;

  factory UserInterviewsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserInterviewsResponseDtoFromJson(json);

  UserInterviewsResponse toEntity() => UserInterviewsResponse(
        interviews: interviews.map((dto) => dto.toEntity()).toList(),
        total: total,
      );
}
