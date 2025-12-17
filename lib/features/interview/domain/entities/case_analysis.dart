import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_analysis.freezed.dart';

/// Market sizing case analysis with 5 MBB dimensions
@freezed
sealed class CaseAnalysis with _$CaseAnalysis {
  const factory CaseAnalysis({
    required StructuredProblemSolving structuredProblemSolving,
    required BusinessJudgment businessJudgment,
    required QuantitativeSkills quantitativeSkills,
    required Communication communication,
    required SanityCheck sanityCheck,
    required double overallWeightedScore,
    required String overallLabel,
    required List<PriorityImprovement> priorityImprovements,
    required List<String> highlights,
  }) = _CaseAnalysis;
}

/// Dimension 1: Structured Problem-Solving (30% weight)
@freezed
sealed class StructuredProblemSolving with _$StructuredProblemSolving {
  const factory StructuredProblemSolving({
    required int score,
    required String feedback,
    required String frameworkDetected,
    required bool meceApplied,
    required bool clarifyingQuestionsAsked,
  }) = _StructuredProblemSolving;
}

/// Dimension 2: Business Judgment & Assumptions (25% weight)
@freezed
sealed class BusinessJudgment with _$BusinessJudgment {
  const factory BusinessJudgment({
    required int score,
    required String feedback,
    required bool assumptionsStated,
    required bool assumptionsJustified,
    required String assumptionQuality,
  }) = _BusinessJudgment;
}

/// Dimension 3: Quantitative Skills (20% weight)
@freezed
sealed class QuantitativeSkills with _$QuantitativeSkills {
  const factory QuantitativeSkills({
    required int score,
    required String feedback,
    required bool mathShownStepByStep,
    required bool mathVerbalized,
    required bool calculationsAccurate,
  }) = _QuantitativeSkills;
}

/// Dimension 4: Communication (15% weight)
@freezed
sealed class Communication with _$Communication {
  const factory Communication({
    required int score,
    required String feedback,
    String? paceAnalysis,
    int? fillersCount,
    int? pausesCount,
  }) = _Communication;
}

/// Dimension 5: Sanity Check (10% weight)
@freezed
sealed class SanityCheck with _$SanityCheck {
  const factory SanityCheck({
    required int score,
    required String feedback,
    required bool sanityCheckPerformed,
    required bool sanityCheckVerbalized,
  }) = _SanityCheck;
}

@freezed
sealed class PriorityImprovement with _$PriorityImprovement {
  const factory PriorityImprovement({
    required String timestamp,
    required String feedback,
  }) = _PriorityImprovement;
}
