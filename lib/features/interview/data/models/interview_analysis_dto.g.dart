// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_analysis_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterviewAnalysisDto _$InterviewAnalysisDtoFromJson(
  Map<String, dynamic> json,
) => _InterviewAnalysisDto(
  id: json['id'] as String,
  status: json['status'] as String,
  transcript: json['transcript'] as String,
  duration: (json['duration'] as num).toDouble(),
  recordingUrl: json['recordingUrl'] as String?,
  metrics: MetricsDto.fromJson(json['metrics'] as Map<String, dynamic>),
  aiAnalysis: json['aiAnalysis'] == null
      ? null
      : AIAnalysisDto.fromJson(json['aiAnalysis'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InterviewAnalysisDtoToJson(
  _InterviewAnalysisDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'transcript': instance.transcript,
  'duration': instance.duration,
  'recordingUrl': instance.recordingUrl,
  'metrics': instance.metrics,
  'aiAnalysis': instance.aiAnalysis,
};

_MetricsDto _$MetricsDtoFromJson(Map<String, dynamic> json) => _MetricsDto(
  averagePace: (json['averagePace'] as num).toInt(),
  totalWords: (json['totalWords'] as num).toInt(),
  fillerCount: (json['fillerCount'] as num).toInt(),
  pauseCount: (json['pauseCount'] as num).toInt(),
  paceTimeline: (json['paceTimeline'] as List<dynamic>)
      .map((e) => PacePointDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MetricsDtoToJson(_MetricsDto instance) =>
    <String, dynamic>{
      'averagePace': instance.averagePace,
      'totalWords': instance.totalWords,
      'fillerCount': instance.fillerCount,
      'pauseCount': instance.pauseCount,
      'paceTimeline': instance.paceTimeline,
    };

_PacePointDto _$PacePointDtoFromJson(Map<String, dynamic> json) =>
    _PacePointDto(
      timestamp: (json['timestamp'] as num).toDouble(),
      wpm: (json['wpm'] as num).toInt(),
      segmentStart: (json['segmentStart'] as num).toDouble(),
      segmentEnd: (json['segmentEnd'] as num).toDouble(),
    );

Map<String, dynamic> _$PacePointDtoToJson(_PacePointDto instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'wpm': instance.wpm,
      'segmentStart': instance.segmentStart,
      'segmentEnd': instance.segmentEnd,
    };

_AIAnalysisDto _$AIAnalysisDtoFromJson(Map<String, dynamic> json) =>
    _AIAnalysisDto(
      overallScore: (json['overallScore'] as num).toDouble(),
      summary: json['summary'] as String,
      paceAnalysis: json['paceAnalysis'] as String,
      fillerAnalysis: json['fillerAnalysis'] as String,
      confidenceScore: (json['confidenceScore'] as num).toDouble(),
      improvements: (json['improvements'] as List<dynamic>)
          .map((e) => ImprovementDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AIAnalysisDtoToJson(_AIAnalysisDto instance) =>
    <String, dynamic>{
      'overallScore': instance.overallScore,
      'summary': instance.summary,
      'paceAnalysis': instance.paceAnalysis,
      'fillerAnalysis': instance.fillerAnalysis,
      'confidenceScore': instance.confidenceScore,
      'improvements': instance.improvements,
      'highlights': instance.highlights,
    };

_ImprovementDto _$ImprovementDtoFromJson(Map<String, dynamic> json) =>
    _ImprovementDto(
      title: json['title'] as String,
      timestamp: (json['timestamp'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$ImprovementDtoToJson(_ImprovementDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'timestamp': instance.timestamp,
      'description': instance.description,
    };
