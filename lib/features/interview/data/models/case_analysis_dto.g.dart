// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_analysis_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CaseAnalysisDto _$CaseAnalysisDtoFromJson(Map<String, dynamic> json) =>
    _CaseAnalysisDto(
      structuredProblemSolving: StructuredProblemSolvingDto.fromJson(
        json['structuredProblemSolving'] as Map<String, dynamic>,
      ),
      businessJudgment: BusinessJudgmentDto.fromJson(
        json['businessJudgment'] as Map<String, dynamic>,
      ),
      quantitativeSkills: QuantitativeSkillsDto.fromJson(
        json['quantitativeSkills'] as Map<String, dynamic>,
      ),
      communication: CommunicationDto.fromJson(
        json['communication'] as Map<String, dynamic>,
      ),
      sanityCheck: SanityCheckDto.fromJson(
        json['sanityCheck'] as Map<String, dynamic>,
      ),
      overallWeightedScore: (json['overallWeightedScore'] as num).toDouble(),
      overallLabel: json['overallLabel'] as String,
      priorityImprovements: (json['priorityImprovements'] as List<dynamic>)
          .map(
            (e) => PriorityImprovementDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CaseAnalysisDtoToJson(_CaseAnalysisDto instance) =>
    <String, dynamic>{
      'structuredProblemSolving': instance.structuredProblemSolving,
      'businessJudgment': instance.businessJudgment,
      'quantitativeSkills': instance.quantitativeSkills,
      'communication': instance.communication,
      'sanityCheck': instance.sanityCheck,
      'overallWeightedScore': instance.overallWeightedScore,
      'overallLabel': instance.overallLabel,
      'priorityImprovements': instance.priorityImprovements,
      'highlights': instance.highlights,
    };

_StructuredProblemSolvingDto _$StructuredProblemSolvingDtoFromJson(
  Map<String, dynamic> json,
) => _StructuredProblemSolvingDto(
  score: (json['score'] as num).toInt(),
  feedback: json['feedback'] as String,
  frameworkDetected: json['frameworkDetected'] as String,
  meceApplied: json['meceApplied'] as bool,
  clarifyingQuestionsAsked: json['clarifyingQuestionsAsked'] as bool,
);

Map<String, dynamic> _$StructuredProblemSolvingDtoToJson(
  _StructuredProblemSolvingDto instance,
) => <String, dynamic>{
  'score': instance.score,
  'feedback': instance.feedback,
  'frameworkDetected': instance.frameworkDetected,
  'meceApplied': instance.meceApplied,
  'clarifyingQuestionsAsked': instance.clarifyingQuestionsAsked,
};

_BusinessJudgmentDto _$BusinessJudgmentDtoFromJson(Map<String, dynamic> json) =>
    _BusinessJudgmentDto(
      score: (json['score'] as num).toInt(),
      feedback: json['feedback'] as String,
      assumptionsStated: json['assumptionsStated'] as bool,
      assumptionsJustified: json['assumptionsJustified'] as bool,
      assumptionQuality: json['assumptionQuality'] as String,
    );

Map<String, dynamic> _$BusinessJudgmentDtoToJson(
  _BusinessJudgmentDto instance,
) => <String, dynamic>{
  'score': instance.score,
  'feedback': instance.feedback,
  'assumptionsStated': instance.assumptionsStated,
  'assumptionsJustified': instance.assumptionsJustified,
  'assumptionQuality': instance.assumptionQuality,
};

_QuantitativeSkillsDto _$QuantitativeSkillsDtoFromJson(
  Map<String, dynamic> json,
) => _QuantitativeSkillsDto(
  score: (json['score'] as num).toInt(),
  feedback: json['feedback'] as String,
  mathShownStepByStep: json['mathShownStepByStep'] as bool,
  mathVerbalized: json['mathVerbalized'] as bool,
  calculationsAccurate: json['calculationsAccurate'] as bool,
);

Map<String, dynamic> _$QuantitativeSkillsDtoToJson(
  _QuantitativeSkillsDto instance,
) => <String, dynamic>{
  'score': instance.score,
  'feedback': instance.feedback,
  'mathShownStepByStep': instance.mathShownStepByStep,
  'mathVerbalized': instance.mathVerbalized,
  'calculationsAccurate': instance.calculationsAccurate,
};

_CommunicationDto _$CommunicationDtoFromJson(Map<String, dynamic> json) =>
    _CommunicationDto(
      score: (json['score'] as num).toInt(),
      feedback: json['feedback'] as String,
      paceAnalysis: json['paceAnalysis'] as String?,
      fillersCount: (json['fillersCount'] as num?)?.toInt(),
      pausesCount: (json['pausesCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CommunicationDtoToJson(_CommunicationDto instance) =>
    <String, dynamic>{
      'score': instance.score,
      'feedback': instance.feedback,
      'paceAnalysis': instance.paceAnalysis,
      'fillersCount': instance.fillersCount,
      'pausesCount': instance.pausesCount,
    };

_SanityCheckDto _$SanityCheckDtoFromJson(Map<String, dynamic> json) =>
    _SanityCheckDto(
      score: (json['score'] as num).toInt(),
      feedback: json['feedback'] as String,
      sanityCheckPerformed: json['sanityCheckPerformed'] as bool,
      sanityCheckVerbalized: json['sanityCheckVerbalized'] as bool,
    );

Map<String, dynamic> _$SanityCheckDtoToJson(_SanityCheckDto instance) =>
    <String, dynamic>{
      'score': instance.score,
      'feedback': instance.feedback,
      'sanityCheckPerformed': instance.sanityCheckPerformed,
      'sanityCheckVerbalized': instance.sanityCheckVerbalized,
    };

_PriorityImprovementDto _$PriorityImprovementDtoFromJson(
  Map<String, dynamic> json,
) => _PriorityImprovementDto(
  timestamp: json['timestamp'] as String,
  feedback: json['feedback'] as String,
);

Map<String, dynamic> _$PriorityImprovementDtoToJson(
  _PriorityImprovementDto instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'feedback': instance.feedback,
};
