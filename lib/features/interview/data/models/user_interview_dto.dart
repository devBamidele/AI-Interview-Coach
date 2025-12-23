import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_interview.dart';

part 'user_interview_dto.freezed.dart';
part 'user_interview_dto.g.dart';

/// DTO for user interview summary from backend
/// Lightweight version from GET /api/interviews/my-interviews/summary
/// 80-90% smaller payload than full data
@freezed
sealed class UserInterviewDto with _$UserInterviewDto {
  const UserInterviewDto._();

  const factory UserInterviewDto({
    required String id,
    required String status,
    required String createdAt,
    required double duration,
    String? caseQuestion,
    String? difficulty,
    String? candidateAnswer,
    // Summary scores only (not full breakdown)
    double? overallWeightedScore,
    String? overallLabel,
  }) = _UserInterviewDto;

  factory UserInterviewDto.fromJson(Map<String, dynamic> json) =>
      _$UserInterviewDtoFromJson(json);

  UserInterview toEntity() => UserInterview(
    id: id,
    status: status,
    createdAt: createdAt,
    duration: duration,
    caseQuestion: caseQuestion,
    difficulty: difficulty,
    candidateAnswer: candidateAnswer,
    overallWeightedScore: overallWeightedScore,
    overallLabel: overallLabel,
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
