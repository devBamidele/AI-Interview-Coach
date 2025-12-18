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
      recordingUrl: json['recordingUrl'] as String?,
      userId: json['userId'] == null
          ? null
          : UserInfoDto.fromJson(json['userId'] as Map<String, dynamic>),
      metrics: json['metrics'] == null
          ? null
          : UserInterviewMetricsDto.fromJson(
              json['metrics'] as Map<String, dynamic>,
            ),
      aiAnalysis: json['aiAnalysis'] == null
          ? null
          : UserInterviewAIAnalysisDto.fromJson(
              json['aiAnalysis'] as Map<String, dynamic>,
            ),
      caseQuestion: json['caseQuestion'] as String?,
      difficulty: json['difficulty'] as String?,
      candidateAnswer: json['candidateAnswer'] as String?,
      caseAnalysis: json['caseAnalysis'] == null
          ? null
          : CaseAnalysisSummaryDto.fromJson(
              json['caseAnalysis'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserInterviewDtoToJson(_UserInterviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'duration': instance.duration,
      'recordingUrl': instance.recordingUrl,
      'userId': instance.userId,
      'metrics': instance.metrics,
      'aiAnalysis': instance.aiAnalysis,
      'caseQuestion': instance.caseQuestion,
      'difficulty': instance.difficulty,
      'candidateAnswer': instance.candidateAnswer,
      'caseAnalysis': instance.caseAnalysis,
    };

_UserInfoDto _$UserInfoDtoFromJson(Map<String, dynamic> json) =>
    _UserInfoDto(email: json['email'] as String, name: json['name'] as String);

Map<String, dynamic> _$UserInfoDtoToJson(_UserInfoDto instance) =>
    <String, dynamic>{'email': instance.email, 'name': instance.name};

_UserInterviewMetricsDto _$UserInterviewMetricsDtoFromJson(
  Map<String, dynamic> json,
) => _UserInterviewMetricsDto(
  averagePace: (json['averagePace'] as num).toInt(),
  totalWords: (json['totalWords'] as num).toInt(),
  fillerCount: (json['fillerCount'] as num).toInt(),
  pauseCount: (json['pauseCount'] as num).toInt(),
  paceTimeline: (json['paceTimeline'] as List<dynamic>)
      .map((e) => PacePointDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserInterviewMetricsDtoToJson(
  _UserInterviewMetricsDto instance,
) => <String, dynamic>{
  'averagePace': instance.averagePace,
  'totalWords': instance.totalWords,
  'fillerCount': instance.fillerCount,
  'pauseCount': instance.pauseCount,
  'paceTimeline': instance.paceTimeline,
};

_UserInterviewAIAnalysisDto _$UserInterviewAIAnalysisDtoFromJson(
  Map<String, dynamic> json,
) => _UserInterviewAIAnalysisDto(
  overallScore: (json['overallScore'] as num).toDouble(),
  summary: json['summary'] as String,
  confidenceScore: (json['confidenceScore'] as num).toDouble(),
);

Map<String, dynamic> _$UserInterviewAIAnalysisDtoToJson(
  _UserInterviewAIAnalysisDto instance,
) => <String, dynamic>{
  'overallScore': instance.overallScore,
  'summary': instance.summary,
  'confidenceScore': instance.confidenceScore,
};

_CaseAnalysisSummaryDto _$CaseAnalysisSummaryDtoFromJson(
  Map<String, dynamic> json,
) => _CaseAnalysisSummaryDto(
  overallWeightedScore: (json['overallWeightedScore'] as num).toDouble(),
  overallLabel: json['overallLabel'] as String,
);

Map<String, dynamic> _$CaseAnalysisSummaryDtoToJson(
  _CaseAnalysisSummaryDto instance,
) => <String, dynamic>{
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
);

Map<String, dynamic> _$UserInterviewsResponseDtoToJson(
  _UserInterviewsResponseDto instance,
) => <String, dynamic>{
  'interviews': instance.interviews,
  'total': instance.total,
};
