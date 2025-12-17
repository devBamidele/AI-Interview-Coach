import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/case_analysis.dart';

part 'case_analysis_dto.freezed.dart';
part 'case_analysis_dto.g.dart';

@freezed
sealed class CaseAnalysisDto with _$CaseAnalysisDto {
  const factory CaseAnalysisDto({
    required StructuredProblemSolvingDto structuredProblemSolving,
    required BusinessJudgmentDto businessJudgment,
    required QuantitativeSkillsDto quantitativeSkills,
    required CommunicationDto communication,
    required SanityCheckDto sanityCheck,
    required double overallWeightedScore,
    required String overallLabel,
    required List<PriorityImprovementDto> priorityImprovements,
    required List<String> highlights,
  }) = _CaseAnalysisDto;

  const CaseAnalysisDto._();

  factory CaseAnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$CaseAnalysisDtoFromJson(json);

  CaseAnalysis toEntity() => CaseAnalysis(
    structuredProblemSolving: structuredProblemSolving.toEntity(),
    businessJudgment: businessJudgment.toEntity(),
    quantitativeSkills: quantitativeSkills.toEntity(),
    communication: communication.toEntity(),
    sanityCheck: sanityCheck.toEntity(),
    overallWeightedScore: overallWeightedScore,
    overallLabel: overallLabel,
    priorityImprovements: priorityImprovements
        .map((e) => e.toEntity())
        .toList(),
    highlights: highlights,
  );
}

@freezed
sealed class StructuredProblemSolvingDto with _$StructuredProblemSolvingDto {
  const factory StructuredProblemSolvingDto({
    required int score,
    required String feedback,
    required String frameworkDetected,
    required bool meceApplied,
    required bool clarifyingQuestionsAsked,
  }) = _StructuredProblemSolvingDto;

  const StructuredProblemSolvingDto._();

  factory StructuredProblemSolvingDto.fromJson(Map<String, dynamic> json) =>
      _$StructuredProblemSolvingDtoFromJson(json);

  StructuredProblemSolving toEntity() => StructuredProblemSolving(
    score: score,
    feedback: feedback,
    frameworkDetected: frameworkDetected,
    meceApplied: meceApplied,
    clarifyingQuestionsAsked: clarifyingQuestionsAsked,
  );
}

@freezed
sealed class BusinessJudgmentDto with _$BusinessJudgmentDto {
  const factory BusinessJudgmentDto({
    required int score,
    required String feedback,
    required bool assumptionsStated,
    required bool assumptionsJustified,
    required String assumptionQuality,
  }) = _BusinessJudgmentDto;

  const BusinessJudgmentDto._();

  factory BusinessJudgmentDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessJudgmentDtoFromJson(json);

  BusinessJudgment toEntity() => BusinessJudgment(
    score: score,
    feedback: feedback,
    assumptionsStated: assumptionsStated,
    assumptionsJustified: assumptionsJustified,
    assumptionQuality: assumptionQuality,
  );
}

@freezed
sealed class QuantitativeSkillsDto with _$QuantitativeSkillsDto {
  const factory QuantitativeSkillsDto({
    required int score,
    required String feedback,
    required bool mathShownStepByStep,
    required bool mathVerbalized,
    required bool calculationsAccurate,
  }) = _QuantitativeSkillsDto;

  const QuantitativeSkillsDto._();

  factory QuantitativeSkillsDto.fromJson(Map<String, dynamic> json) =>
      _$QuantitativeSkillsDtoFromJson(json);

  QuantitativeSkills toEntity() => QuantitativeSkills(
    score: score,
    feedback: feedback,
    mathShownStepByStep: mathShownStepByStep,
    mathVerbalized: mathVerbalized,
    calculationsAccurate: calculationsAccurate,
  );
}

@freezed
sealed class CommunicationDto with _$CommunicationDto {
  const factory CommunicationDto({
    required int score,
    required String feedback,
    String? paceAnalysis,
    int? fillersCount,
    int? pausesCount,
  }) = _CommunicationDto;

  const CommunicationDto._();

  factory CommunicationDto.fromJson(Map<String, dynamic> json) =>
      _$CommunicationDtoFromJson(json);

  Communication toEntity() => Communication(
    score: score,
    feedback: feedback,
    paceAnalysis: paceAnalysis,
    fillersCount: fillersCount,
    pausesCount: pausesCount,
  );
}

@freezed
sealed class SanityCheckDto with _$SanityCheckDto {
  const factory SanityCheckDto({
    required int score,
    required String feedback,
    required bool sanityCheckPerformed,
    required bool sanityCheckVerbalized,
  }) = _SanityCheckDto;

  const SanityCheckDto._();

  factory SanityCheckDto.fromJson(Map<String, dynamic> json) =>
      _$SanityCheckDtoFromJson(json);

  SanityCheck toEntity() => SanityCheck(
    score: score,
    feedback: feedback,
    sanityCheckPerformed: sanityCheckPerformed,
    sanityCheckVerbalized: sanityCheckVerbalized,
  );
}

@freezed
sealed class PriorityImprovementDto with _$PriorityImprovementDto {
  const factory PriorityImprovementDto({
    required String timestamp,
    required String feedback,
  }) = _PriorityImprovementDto;

  const PriorityImprovementDto._();

  factory PriorityImprovementDto.fromJson(Map<String, dynamic> json) =>
      _$PriorityImprovementDtoFromJson(json);

  PriorityImprovement toEntity() =>
      PriorityImprovement(timestamp: timestamp, feedback: feedback);
}
