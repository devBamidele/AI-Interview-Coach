import 'package:freezed_annotation/freezed_annotation.dart';
import 'case_analysis.dart';

part 'interview_analysis.freezed.dart';

/// Interview analysis entity containing all analysis data from backend
@freezed
sealed class InterviewAnalysis with _$InterviewAnalysis {
  const factory InterviewAnalysis({
    required String id,
    String? userId,
    required String createdAt,
    required String status,
    required String transcript,
    required double duration,
    String? recordingUrl,
    required Metrics metrics,
    // Generic interview (existing)
    AIAnalysis? aiAnalysis,
    // Market sizing specific fields
    String? caseQuestion,
    String? difficulty,
    String? candidateAnswer,
    CaseAnalysis? caseAnalysis,
  }) = _InterviewAnalysis;

  const InterviewAnalysis._();

  /// Check if this is a market sizing interview
  bool get isMarketSizing => caseAnalysis != null;
}

/// Metrics calculated from the interview
@freezed
sealed class Metrics with _$Metrics {
  const factory Metrics({
    required int averagePace,
    required int totalWords,
    required int fillerCount,
    required int pauseCount,
    required List<PacePoint> paceTimeline,
  }) = _Metrics;
}

/// Point in the pace timeline
@freezed
sealed class PacePoint with _$PacePoint {
  const factory PacePoint({
    required double timestamp,
    required int wpm,
    required double segmentStart,
    required double segmentEnd,
  }) = _PacePoint;
}

/// AI-generated analysis from OpenAI
@freezed
sealed class AIAnalysis with _$AIAnalysis {
  const factory AIAnalysis({
    required double overallScore,
    required String summary,
    required String paceAnalysis,
    required String fillerAnalysis,
    required double confidenceScore,
    required List<Improvement> improvements,
    required List<String> highlights,
  }) = _AIAnalysis;
}

/// Improvement suggestion with timestamp
@freezed
sealed class Improvement with _$Improvement {
  const factory Improvement({
    required String title,
    required double timestamp,
    required String description,
  }) = _Improvement;
}
