import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/interview_analysis.dart';
import 'case_analysis_dto.dart';

part 'interview_analysis_dto.freezed.dart';
part 'interview_analysis_dto.g.dart';

/// DTO for interview analysis from backend
@freezed
sealed class InterviewAnalysisDto with _$InterviewAnalysisDto {
  const InterviewAnalysisDto._();

  const factory InterviewAnalysisDto({
    required String id,
    String? userId,
    required String createdAt,
    required String status,
    required String transcript,
    required double duration,
    String? recordingUrl,
    required MetricsDto metrics,
    // Generic interview (existing)
    AIAnalysisDto? aiAnalysis,
    // Market sizing specific fields
    String? caseQuestion,
    String? difficulty,
    String? candidateAnswer,
    CaseAnalysisDto? caseAnalysis,
  }) = _InterviewAnalysisDto;

  /// Custom fromJson that handles userId as either String, Object, or null
  factory InterviewAnalysisDto.fromJson(Map<String, dynamic> json) {
    // Handle userId field - can be String, Object with _id, or null
    String? userId;
    final userIdJson = json['userId'];
    if (userIdJson is String) {
      userId = userIdJson;
    } else if (userIdJson is Map<String, dynamic>) {
      userId = userIdJson['_id'] as String?;
    }

    return InterviewAnalysisDto(
      id: json['id'] as String,
      userId: userId,
      createdAt: json['createdAt'] as String,
      status: json['status'] as String,
      transcript: json['transcript'] as String,
      duration: (json['duration'] as num).toDouble(),
      recordingUrl: json['recordingUrl'] as String?,
      metrics: MetricsDto.fromJson(json['metrics'] as Map<String, dynamic>),
      aiAnalysis: json['aiAnalysis'] == null
          ? null
          : AIAnalysisDto.fromJson(json['aiAnalysis'] as Map<String, dynamic>),
      caseQuestion: json['caseQuestion'] as String?,
      difficulty: json['difficulty'] as String?,
      candidateAnswer: json['candidateAnswer'] as String?,
      caseAnalysis: json['caseAnalysis'] == null
          ? null
          : CaseAnalysisDto.fromJson(json['caseAnalysis'] as Map<String, dynamic>),
    );
  }

  InterviewAnalysis toEntity() => InterviewAnalysis(
        id: id,
        userId: userId,
        createdAt: createdAt,
        status: status,
        transcript: transcript,
        duration: duration,
        recordingUrl: recordingUrl,
        metrics: metrics.toEntity(),
        aiAnalysis: aiAnalysis?.toEntity(),
        caseQuestion: caseQuestion,
        difficulty: difficulty,
        candidateAnswer: candidateAnswer,
        caseAnalysis: caseAnalysis?.toEntity(),
      );
}

@freezed
sealed class MetricsDto with _$MetricsDto {
  const MetricsDto._();

  const factory MetricsDto({
    required int averagePace,
    required int totalWords,
    required int fillerCount,
    required int pauseCount,
    required List<PacePointDto> paceTimeline,
  }) = _MetricsDto;

  factory MetricsDto.fromJson(Map<String, dynamic> json) =>
      _$MetricsDtoFromJson(json);

  Metrics toEntity() => Metrics(
    averagePace: averagePace,
    totalWords: totalWords,
    fillerCount: fillerCount,
    pauseCount: pauseCount,
    paceTimeline: paceTimeline.map((p) => p.toEntity()).toList(),
  );
}

@freezed
sealed class PacePointDto with _$PacePointDto {
  const PacePointDto._();

  const factory PacePointDto({
    required double timestamp,
    required int wpm,
    required double segmentStart,
    required double segmentEnd,
  }) = _PacePointDto;

  factory PacePointDto.fromJson(Map<String, dynamic> json) =>
      _$PacePointDtoFromJson(json);

  PacePoint toEntity() => PacePoint(
    timestamp: timestamp,
    wpm: wpm,
    segmentStart: segmentStart,
    segmentEnd: segmentEnd,
  );
}

@freezed
sealed class AIAnalysisDto with _$AIAnalysisDto {
  const AIAnalysisDto._();

  const factory AIAnalysisDto({
    required double overallScore,
    required String summary,
    required String paceAnalysis,
    required String fillerAnalysis,
    required double confidenceScore,
    required List<ImprovementDto> improvements,
    required List<String> highlights,
  }) = _AIAnalysisDto;

  factory AIAnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$AIAnalysisDtoFromJson(json);

  AIAnalysis toEntity() => AIAnalysis(
    overallScore: overallScore,
    summary: summary,
    paceAnalysis: paceAnalysis,
    fillerAnalysis: fillerAnalysis,
    confidenceScore: confidenceScore,
    improvements: improvements.map((i) => i.toEntity()).toList(),
    highlights: highlights,
  );
}

@freezed
sealed class ImprovementDto with _$ImprovementDto {
  const ImprovementDto._();

  const factory ImprovementDto({
    required String title,
    required double timestamp,
    required String description,
  }) = _ImprovementDto;

  factory ImprovementDto.fromJson(Map<String, dynamic> json) =>
      _$ImprovementDtoFromJson(json);

  Improvement toEntity() =>
      Improvement(title: title, timestamp: timestamp, description: description);
}
