// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_interview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInterviewDto _$UserInterviewDtoFromJson(Map<String, dynamic> json) =>
    _UserInterviewDto(
      id: json['id'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      duration: (json['duration'] as num).toDouble(),
      caseQuestion: json['caseQuestion'] as String?,
      difficulty: json['difficulty'] as String?,
      candidateAnswer: json['candidateAnswer'] as String?,
      overallWeightedScore: (json['overallWeightedScore'] as num?)?.toDouble(),
      overallLabel: json['overallLabel'] as String?,
    );

Map<String, dynamic> _$UserInterviewDtoToJson(_UserInterviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'duration': instance.duration,
      'caseQuestion': instance.caseQuestion,
      'difficulty': instance.difficulty,
      'candidateAnswer': instance.candidateAnswer,
      'overallWeightedScore': instance.overallWeightedScore,
      'overallLabel': instance.overallLabel,
    };

_UserInterviewsResponseDto _$UserInterviewsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _UserInterviewsResponseDto(
  interviews: (json['interviews'] as List<dynamic>)
      .map((e) => UserInterviewDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  hasNextPage: json['hasNextPage'] as bool,
  hasPrevPage: json['hasPrevPage'] as bool,
);

Map<String, dynamic> _$UserInterviewsResponseDtoToJson(
  _UserInterviewsResponseDto instance,
) => <String, dynamic>{
  'interviews': instance.interviews,
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'totalPages': instance.totalPages,
  'hasNextPage': instance.hasNextPage,
  'hasPrevPage': instance.hasPrevPage,
};
