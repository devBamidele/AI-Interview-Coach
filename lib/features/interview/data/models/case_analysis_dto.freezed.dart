// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_analysis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CaseAnalysisDto {

 StructuredProblemSolvingDto get structuredProblemSolving; BusinessJudgmentDto get businessJudgment; QuantitativeSkillsDto get quantitativeSkills; CommunicationDto get communication; SanityCheckDto get sanityCheck; double get overallWeightedScore; String get overallLabel; List<PriorityImprovementDto> get priorityImprovements; List<String> get highlights;
/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseAnalysisDtoCopyWith<CaseAnalysisDto> get copyWith => _$CaseAnalysisDtoCopyWithImpl<CaseAnalysisDto>(this as CaseAnalysisDto, _$identity);

  /// Serializes this CaseAnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseAnalysisDto&&(identical(other.structuredProblemSolving, structuredProblemSolving) || other.structuredProblemSolving == structuredProblemSolving)&&(identical(other.businessJudgment, businessJudgment) || other.businessJudgment == businessJudgment)&&(identical(other.quantitativeSkills, quantitativeSkills) || other.quantitativeSkills == quantitativeSkills)&&(identical(other.communication, communication) || other.communication == communication)&&(identical(other.sanityCheck, sanityCheck) || other.sanityCheck == sanityCheck)&&(identical(other.overallWeightedScore, overallWeightedScore) || other.overallWeightedScore == overallWeightedScore)&&(identical(other.overallLabel, overallLabel) || other.overallLabel == overallLabel)&&const DeepCollectionEquality().equals(other.priorityImprovements, priorityImprovements)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,structuredProblemSolving,businessJudgment,quantitativeSkills,communication,sanityCheck,overallWeightedScore,overallLabel,const DeepCollectionEquality().hash(priorityImprovements),const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'CaseAnalysisDto(structuredProblemSolving: $structuredProblemSolving, businessJudgment: $businessJudgment, quantitativeSkills: $quantitativeSkills, communication: $communication, sanityCheck: $sanityCheck, overallWeightedScore: $overallWeightedScore, overallLabel: $overallLabel, priorityImprovements: $priorityImprovements, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $CaseAnalysisDtoCopyWith<$Res>  {
  factory $CaseAnalysisDtoCopyWith(CaseAnalysisDto value, $Res Function(CaseAnalysisDto) _then) = _$CaseAnalysisDtoCopyWithImpl;
@useResult
$Res call({
 StructuredProblemSolvingDto structuredProblemSolving, BusinessJudgmentDto businessJudgment, QuantitativeSkillsDto quantitativeSkills, CommunicationDto communication, SanityCheckDto sanityCheck, double overallWeightedScore, String overallLabel, List<PriorityImprovementDto> priorityImprovements, List<String> highlights
});


$StructuredProblemSolvingDtoCopyWith<$Res> get structuredProblemSolving;$BusinessJudgmentDtoCopyWith<$Res> get businessJudgment;$QuantitativeSkillsDtoCopyWith<$Res> get quantitativeSkills;$CommunicationDtoCopyWith<$Res> get communication;$SanityCheckDtoCopyWith<$Res> get sanityCheck;

}
/// @nodoc
class _$CaseAnalysisDtoCopyWithImpl<$Res>
    implements $CaseAnalysisDtoCopyWith<$Res> {
  _$CaseAnalysisDtoCopyWithImpl(this._self, this._then);

  final CaseAnalysisDto _self;
  final $Res Function(CaseAnalysisDto) _then;

/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? structuredProblemSolving = null,Object? businessJudgment = null,Object? quantitativeSkills = null,Object? communication = null,Object? sanityCheck = null,Object? overallWeightedScore = null,Object? overallLabel = null,Object? priorityImprovements = null,Object? highlights = null,}) {
  return _then(_self.copyWith(
structuredProblemSolving: null == structuredProblemSolving ? _self.structuredProblemSolving : structuredProblemSolving // ignore: cast_nullable_to_non_nullable
as StructuredProblemSolvingDto,businessJudgment: null == businessJudgment ? _self.businessJudgment : businessJudgment // ignore: cast_nullable_to_non_nullable
as BusinessJudgmentDto,quantitativeSkills: null == quantitativeSkills ? _self.quantitativeSkills : quantitativeSkills // ignore: cast_nullable_to_non_nullable
as QuantitativeSkillsDto,communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as CommunicationDto,sanityCheck: null == sanityCheck ? _self.sanityCheck : sanityCheck // ignore: cast_nullable_to_non_nullable
as SanityCheckDto,overallWeightedScore: null == overallWeightedScore ? _self.overallWeightedScore : overallWeightedScore // ignore: cast_nullable_to_non_nullable
as double,overallLabel: null == overallLabel ? _self.overallLabel : overallLabel // ignore: cast_nullable_to_non_nullable
as String,priorityImprovements: null == priorityImprovements ? _self.priorityImprovements : priorityImprovements // ignore: cast_nullable_to_non_nullable
as List<PriorityImprovementDto>,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StructuredProblemSolvingDtoCopyWith<$Res> get structuredProblemSolving {
  
  return $StructuredProblemSolvingDtoCopyWith<$Res>(_self.structuredProblemSolving, (value) {
    return _then(_self.copyWith(structuredProblemSolving: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessJudgmentDtoCopyWith<$Res> get businessJudgment {
  
  return $BusinessJudgmentDtoCopyWith<$Res>(_self.businessJudgment, (value) {
    return _then(_self.copyWith(businessJudgment: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuantitativeSkillsDtoCopyWith<$Res> get quantitativeSkills {
  
  return $QuantitativeSkillsDtoCopyWith<$Res>(_self.quantitativeSkills, (value) {
    return _then(_self.copyWith(quantitativeSkills: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommunicationDtoCopyWith<$Res> get communication {
  
  return $CommunicationDtoCopyWith<$Res>(_self.communication, (value) {
    return _then(_self.copyWith(communication: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SanityCheckDtoCopyWith<$Res> get sanityCheck {
  
  return $SanityCheckDtoCopyWith<$Res>(_self.sanityCheck, (value) {
    return _then(_self.copyWith(sanityCheck: value));
  });
}
}


/// Adds pattern-matching-related methods to [CaseAnalysisDto].
extension CaseAnalysisDtoPatterns on CaseAnalysisDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseAnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseAnalysisDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseAnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _CaseAnalysisDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseAnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _CaseAnalysisDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StructuredProblemSolvingDto structuredProblemSolving,  BusinessJudgmentDto businessJudgment,  QuantitativeSkillsDto quantitativeSkills,  CommunicationDto communication,  SanityCheckDto sanityCheck,  double overallWeightedScore,  String overallLabel,  List<PriorityImprovementDto> priorityImprovements,  List<String> highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseAnalysisDto() when $default != null:
return $default(_that.structuredProblemSolving,_that.businessJudgment,_that.quantitativeSkills,_that.communication,_that.sanityCheck,_that.overallWeightedScore,_that.overallLabel,_that.priorityImprovements,_that.highlights);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StructuredProblemSolvingDto structuredProblemSolving,  BusinessJudgmentDto businessJudgment,  QuantitativeSkillsDto quantitativeSkills,  CommunicationDto communication,  SanityCheckDto sanityCheck,  double overallWeightedScore,  String overallLabel,  List<PriorityImprovementDto> priorityImprovements,  List<String> highlights)  $default,) {final _that = this;
switch (_that) {
case _CaseAnalysisDto():
return $default(_that.structuredProblemSolving,_that.businessJudgment,_that.quantitativeSkills,_that.communication,_that.sanityCheck,_that.overallWeightedScore,_that.overallLabel,_that.priorityImprovements,_that.highlights);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StructuredProblemSolvingDto structuredProblemSolving,  BusinessJudgmentDto businessJudgment,  QuantitativeSkillsDto quantitativeSkills,  CommunicationDto communication,  SanityCheckDto sanityCheck,  double overallWeightedScore,  String overallLabel,  List<PriorityImprovementDto> priorityImprovements,  List<String> highlights)?  $default,) {final _that = this;
switch (_that) {
case _CaseAnalysisDto() when $default != null:
return $default(_that.structuredProblemSolving,_that.businessJudgment,_that.quantitativeSkills,_that.communication,_that.sanityCheck,_that.overallWeightedScore,_that.overallLabel,_that.priorityImprovements,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CaseAnalysisDto extends CaseAnalysisDto {
  const _CaseAnalysisDto({required this.structuredProblemSolving, required this.businessJudgment, required this.quantitativeSkills, required this.communication, required this.sanityCheck, required this.overallWeightedScore, required this.overallLabel, required final  List<PriorityImprovementDto> priorityImprovements, required final  List<String> highlights}): _priorityImprovements = priorityImprovements,_highlights = highlights,super._();
  factory _CaseAnalysisDto.fromJson(Map<String, dynamic> json) => _$CaseAnalysisDtoFromJson(json);

@override final  StructuredProblemSolvingDto structuredProblemSolving;
@override final  BusinessJudgmentDto businessJudgment;
@override final  QuantitativeSkillsDto quantitativeSkills;
@override final  CommunicationDto communication;
@override final  SanityCheckDto sanityCheck;
@override final  double overallWeightedScore;
@override final  String overallLabel;
 final  List<PriorityImprovementDto> _priorityImprovements;
@override List<PriorityImprovementDto> get priorityImprovements {
  if (_priorityImprovements is EqualUnmodifiableListView) return _priorityImprovements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priorityImprovements);
}

 final  List<String> _highlights;
@override List<String> get highlights {
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlights);
}


/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseAnalysisDtoCopyWith<_CaseAnalysisDto> get copyWith => __$CaseAnalysisDtoCopyWithImpl<_CaseAnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CaseAnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseAnalysisDto&&(identical(other.structuredProblemSolving, structuredProblemSolving) || other.structuredProblemSolving == structuredProblemSolving)&&(identical(other.businessJudgment, businessJudgment) || other.businessJudgment == businessJudgment)&&(identical(other.quantitativeSkills, quantitativeSkills) || other.quantitativeSkills == quantitativeSkills)&&(identical(other.communication, communication) || other.communication == communication)&&(identical(other.sanityCheck, sanityCheck) || other.sanityCheck == sanityCheck)&&(identical(other.overallWeightedScore, overallWeightedScore) || other.overallWeightedScore == overallWeightedScore)&&(identical(other.overallLabel, overallLabel) || other.overallLabel == overallLabel)&&const DeepCollectionEquality().equals(other._priorityImprovements, _priorityImprovements)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,structuredProblemSolving,businessJudgment,quantitativeSkills,communication,sanityCheck,overallWeightedScore,overallLabel,const DeepCollectionEquality().hash(_priorityImprovements),const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'CaseAnalysisDto(structuredProblemSolving: $structuredProblemSolving, businessJudgment: $businessJudgment, quantitativeSkills: $quantitativeSkills, communication: $communication, sanityCheck: $sanityCheck, overallWeightedScore: $overallWeightedScore, overallLabel: $overallLabel, priorityImprovements: $priorityImprovements, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$CaseAnalysisDtoCopyWith<$Res> implements $CaseAnalysisDtoCopyWith<$Res> {
  factory _$CaseAnalysisDtoCopyWith(_CaseAnalysisDto value, $Res Function(_CaseAnalysisDto) _then) = __$CaseAnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 StructuredProblemSolvingDto structuredProblemSolving, BusinessJudgmentDto businessJudgment, QuantitativeSkillsDto quantitativeSkills, CommunicationDto communication, SanityCheckDto sanityCheck, double overallWeightedScore, String overallLabel, List<PriorityImprovementDto> priorityImprovements, List<String> highlights
});


@override $StructuredProblemSolvingDtoCopyWith<$Res> get structuredProblemSolving;@override $BusinessJudgmentDtoCopyWith<$Res> get businessJudgment;@override $QuantitativeSkillsDtoCopyWith<$Res> get quantitativeSkills;@override $CommunicationDtoCopyWith<$Res> get communication;@override $SanityCheckDtoCopyWith<$Res> get sanityCheck;

}
/// @nodoc
class __$CaseAnalysisDtoCopyWithImpl<$Res>
    implements _$CaseAnalysisDtoCopyWith<$Res> {
  __$CaseAnalysisDtoCopyWithImpl(this._self, this._then);

  final _CaseAnalysisDto _self;
  final $Res Function(_CaseAnalysisDto) _then;

/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? structuredProblemSolving = null,Object? businessJudgment = null,Object? quantitativeSkills = null,Object? communication = null,Object? sanityCheck = null,Object? overallWeightedScore = null,Object? overallLabel = null,Object? priorityImprovements = null,Object? highlights = null,}) {
  return _then(_CaseAnalysisDto(
structuredProblemSolving: null == structuredProblemSolving ? _self.structuredProblemSolving : structuredProblemSolving // ignore: cast_nullable_to_non_nullable
as StructuredProblemSolvingDto,businessJudgment: null == businessJudgment ? _self.businessJudgment : businessJudgment // ignore: cast_nullable_to_non_nullable
as BusinessJudgmentDto,quantitativeSkills: null == quantitativeSkills ? _self.quantitativeSkills : quantitativeSkills // ignore: cast_nullable_to_non_nullable
as QuantitativeSkillsDto,communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as CommunicationDto,sanityCheck: null == sanityCheck ? _self.sanityCheck : sanityCheck // ignore: cast_nullable_to_non_nullable
as SanityCheckDto,overallWeightedScore: null == overallWeightedScore ? _self.overallWeightedScore : overallWeightedScore // ignore: cast_nullable_to_non_nullable
as double,overallLabel: null == overallLabel ? _self.overallLabel : overallLabel // ignore: cast_nullable_to_non_nullable
as String,priorityImprovements: null == priorityImprovements ? _self._priorityImprovements : priorityImprovements // ignore: cast_nullable_to_non_nullable
as List<PriorityImprovementDto>,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StructuredProblemSolvingDtoCopyWith<$Res> get structuredProblemSolving {
  
  return $StructuredProblemSolvingDtoCopyWith<$Res>(_self.structuredProblemSolving, (value) {
    return _then(_self.copyWith(structuredProblemSolving: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessJudgmentDtoCopyWith<$Res> get businessJudgment {
  
  return $BusinessJudgmentDtoCopyWith<$Res>(_self.businessJudgment, (value) {
    return _then(_self.copyWith(businessJudgment: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuantitativeSkillsDtoCopyWith<$Res> get quantitativeSkills {
  
  return $QuantitativeSkillsDtoCopyWith<$Res>(_self.quantitativeSkills, (value) {
    return _then(_self.copyWith(quantitativeSkills: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommunicationDtoCopyWith<$Res> get communication {
  
  return $CommunicationDtoCopyWith<$Res>(_self.communication, (value) {
    return _then(_self.copyWith(communication: value));
  });
}/// Create a copy of CaseAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SanityCheckDtoCopyWith<$Res> get sanityCheck {
  
  return $SanityCheckDtoCopyWith<$Res>(_self.sanityCheck, (value) {
    return _then(_self.copyWith(sanityCheck: value));
  });
}
}


/// @nodoc
mixin _$StructuredProblemSolvingDto {

 int get score; String get feedback; String get frameworkDetected; bool get meceApplied; bool get clarifyingQuestionsAsked;
/// Create a copy of StructuredProblemSolvingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StructuredProblemSolvingDtoCopyWith<StructuredProblemSolvingDto> get copyWith => _$StructuredProblemSolvingDtoCopyWithImpl<StructuredProblemSolvingDto>(this as StructuredProblemSolvingDto, _$identity);

  /// Serializes this StructuredProblemSolvingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StructuredProblemSolvingDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.frameworkDetected, frameworkDetected) || other.frameworkDetected == frameworkDetected)&&(identical(other.meceApplied, meceApplied) || other.meceApplied == meceApplied)&&(identical(other.clarifyingQuestionsAsked, clarifyingQuestionsAsked) || other.clarifyingQuestionsAsked == clarifyingQuestionsAsked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,frameworkDetected,meceApplied,clarifyingQuestionsAsked);

@override
String toString() {
  return 'StructuredProblemSolvingDto(score: $score, feedback: $feedback, frameworkDetected: $frameworkDetected, meceApplied: $meceApplied, clarifyingQuestionsAsked: $clarifyingQuestionsAsked)';
}


}

/// @nodoc
abstract mixin class $StructuredProblemSolvingDtoCopyWith<$Res>  {
  factory $StructuredProblemSolvingDtoCopyWith(StructuredProblemSolvingDto value, $Res Function(StructuredProblemSolvingDto) _then) = _$StructuredProblemSolvingDtoCopyWithImpl;
@useResult
$Res call({
 int score, String feedback, String frameworkDetected, bool meceApplied, bool clarifyingQuestionsAsked
});




}
/// @nodoc
class _$StructuredProblemSolvingDtoCopyWithImpl<$Res>
    implements $StructuredProblemSolvingDtoCopyWith<$Res> {
  _$StructuredProblemSolvingDtoCopyWithImpl(this._self, this._then);

  final StructuredProblemSolvingDto _self;
  final $Res Function(StructuredProblemSolvingDto) _then;

/// Create a copy of StructuredProblemSolvingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? feedback = null,Object? frameworkDetected = null,Object? meceApplied = null,Object? clarifyingQuestionsAsked = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,frameworkDetected: null == frameworkDetected ? _self.frameworkDetected : frameworkDetected // ignore: cast_nullable_to_non_nullable
as String,meceApplied: null == meceApplied ? _self.meceApplied : meceApplied // ignore: cast_nullable_to_non_nullable
as bool,clarifyingQuestionsAsked: null == clarifyingQuestionsAsked ? _self.clarifyingQuestionsAsked : clarifyingQuestionsAsked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StructuredProblemSolvingDto].
extension StructuredProblemSolvingDtoPatterns on StructuredProblemSolvingDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StructuredProblemSolvingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StructuredProblemSolvingDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StructuredProblemSolvingDto value)  $default,){
final _that = this;
switch (_that) {
case _StructuredProblemSolvingDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StructuredProblemSolvingDto value)?  $default,){
final _that = this;
switch (_that) {
case _StructuredProblemSolvingDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  String feedback,  String frameworkDetected,  bool meceApplied,  bool clarifyingQuestionsAsked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StructuredProblemSolvingDto() when $default != null:
return $default(_that.score,_that.feedback,_that.frameworkDetected,_that.meceApplied,_that.clarifyingQuestionsAsked);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  String feedback,  String frameworkDetected,  bool meceApplied,  bool clarifyingQuestionsAsked)  $default,) {final _that = this;
switch (_that) {
case _StructuredProblemSolvingDto():
return $default(_that.score,_that.feedback,_that.frameworkDetected,_that.meceApplied,_that.clarifyingQuestionsAsked);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  String feedback,  String frameworkDetected,  bool meceApplied,  bool clarifyingQuestionsAsked)?  $default,) {final _that = this;
switch (_that) {
case _StructuredProblemSolvingDto() when $default != null:
return $default(_that.score,_that.feedback,_that.frameworkDetected,_that.meceApplied,_that.clarifyingQuestionsAsked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StructuredProblemSolvingDto extends StructuredProblemSolvingDto {
  const _StructuredProblemSolvingDto({required this.score, required this.feedback, required this.frameworkDetected, required this.meceApplied, required this.clarifyingQuestionsAsked}): super._();
  factory _StructuredProblemSolvingDto.fromJson(Map<String, dynamic> json) => _$StructuredProblemSolvingDtoFromJson(json);

@override final  int score;
@override final  String feedback;
@override final  String frameworkDetected;
@override final  bool meceApplied;
@override final  bool clarifyingQuestionsAsked;

/// Create a copy of StructuredProblemSolvingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StructuredProblemSolvingDtoCopyWith<_StructuredProblemSolvingDto> get copyWith => __$StructuredProblemSolvingDtoCopyWithImpl<_StructuredProblemSolvingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StructuredProblemSolvingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StructuredProblemSolvingDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.frameworkDetected, frameworkDetected) || other.frameworkDetected == frameworkDetected)&&(identical(other.meceApplied, meceApplied) || other.meceApplied == meceApplied)&&(identical(other.clarifyingQuestionsAsked, clarifyingQuestionsAsked) || other.clarifyingQuestionsAsked == clarifyingQuestionsAsked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,frameworkDetected,meceApplied,clarifyingQuestionsAsked);

@override
String toString() {
  return 'StructuredProblemSolvingDto(score: $score, feedback: $feedback, frameworkDetected: $frameworkDetected, meceApplied: $meceApplied, clarifyingQuestionsAsked: $clarifyingQuestionsAsked)';
}


}

/// @nodoc
abstract mixin class _$StructuredProblemSolvingDtoCopyWith<$Res> implements $StructuredProblemSolvingDtoCopyWith<$Res> {
  factory _$StructuredProblemSolvingDtoCopyWith(_StructuredProblemSolvingDto value, $Res Function(_StructuredProblemSolvingDto) _then) = __$StructuredProblemSolvingDtoCopyWithImpl;
@override @useResult
$Res call({
 int score, String feedback, String frameworkDetected, bool meceApplied, bool clarifyingQuestionsAsked
});




}
/// @nodoc
class __$StructuredProblemSolvingDtoCopyWithImpl<$Res>
    implements _$StructuredProblemSolvingDtoCopyWith<$Res> {
  __$StructuredProblemSolvingDtoCopyWithImpl(this._self, this._then);

  final _StructuredProblemSolvingDto _self;
  final $Res Function(_StructuredProblemSolvingDto) _then;

/// Create a copy of StructuredProblemSolvingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? feedback = null,Object? frameworkDetected = null,Object? meceApplied = null,Object? clarifyingQuestionsAsked = null,}) {
  return _then(_StructuredProblemSolvingDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,frameworkDetected: null == frameworkDetected ? _self.frameworkDetected : frameworkDetected // ignore: cast_nullable_to_non_nullable
as String,meceApplied: null == meceApplied ? _self.meceApplied : meceApplied // ignore: cast_nullable_to_non_nullable
as bool,clarifyingQuestionsAsked: null == clarifyingQuestionsAsked ? _self.clarifyingQuestionsAsked : clarifyingQuestionsAsked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BusinessJudgmentDto {

 int get score; String get feedback; bool get assumptionsStated; bool get assumptionsJustified; String get assumptionQuality;
/// Create a copy of BusinessJudgmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessJudgmentDtoCopyWith<BusinessJudgmentDto> get copyWith => _$BusinessJudgmentDtoCopyWithImpl<BusinessJudgmentDto>(this as BusinessJudgmentDto, _$identity);

  /// Serializes this BusinessJudgmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessJudgmentDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.assumptionsStated, assumptionsStated) || other.assumptionsStated == assumptionsStated)&&(identical(other.assumptionsJustified, assumptionsJustified) || other.assumptionsJustified == assumptionsJustified)&&(identical(other.assumptionQuality, assumptionQuality) || other.assumptionQuality == assumptionQuality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,assumptionsStated,assumptionsJustified,assumptionQuality);

@override
String toString() {
  return 'BusinessJudgmentDto(score: $score, feedback: $feedback, assumptionsStated: $assumptionsStated, assumptionsJustified: $assumptionsJustified, assumptionQuality: $assumptionQuality)';
}


}

/// @nodoc
abstract mixin class $BusinessJudgmentDtoCopyWith<$Res>  {
  factory $BusinessJudgmentDtoCopyWith(BusinessJudgmentDto value, $Res Function(BusinessJudgmentDto) _then) = _$BusinessJudgmentDtoCopyWithImpl;
@useResult
$Res call({
 int score, String feedback, bool assumptionsStated, bool assumptionsJustified, String assumptionQuality
});




}
/// @nodoc
class _$BusinessJudgmentDtoCopyWithImpl<$Res>
    implements $BusinessJudgmentDtoCopyWith<$Res> {
  _$BusinessJudgmentDtoCopyWithImpl(this._self, this._then);

  final BusinessJudgmentDto _self;
  final $Res Function(BusinessJudgmentDto) _then;

/// Create a copy of BusinessJudgmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? feedback = null,Object? assumptionsStated = null,Object? assumptionsJustified = null,Object? assumptionQuality = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,assumptionsStated: null == assumptionsStated ? _self.assumptionsStated : assumptionsStated // ignore: cast_nullable_to_non_nullable
as bool,assumptionsJustified: null == assumptionsJustified ? _self.assumptionsJustified : assumptionsJustified // ignore: cast_nullable_to_non_nullable
as bool,assumptionQuality: null == assumptionQuality ? _self.assumptionQuality : assumptionQuality // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessJudgmentDto].
extension BusinessJudgmentDtoPatterns on BusinessJudgmentDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessJudgmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessJudgmentDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessJudgmentDto value)  $default,){
final _that = this;
switch (_that) {
case _BusinessJudgmentDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessJudgmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessJudgmentDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  String feedback,  bool assumptionsStated,  bool assumptionsJustified,  String assumptionQuality)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessJudgmentDto() when $default != null:
return $default(_that.score,_that.feedback,_that.assumptionsStated,_that.assumptionsJustified,_that.assumptionQuality);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  String feedback,  bool assumptionsStated,  bool assumptionsJustified,  String assumptionQuality)  $default,) {final _that = this;
switch (_that) {
case _BusinessJudgmentDto():
return $default(_that.score,_that.feedback,_that.assumptionsStated,_that.assumptionsJustified,_that.assumptionQuality);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  String feedback,  bool assumptionsStated,  bool assumptionsJustified,  String assumptionQuality)?  $default,) {final _that = this;
switch (_that) {
case _BusinessJudgmentDto() when $default != null:
return $default(_that.score,_that.feedback,_that.assumptionsStated,_that.assumptionsJustified,_that.assumptionQuality);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessJudgmentDto extends BusinessJudgmentDto {
  const _BusinessJudgmentDto({required this.score, required this.feedback, required this.assumptionsStated, required this.assumptionsJustified, required this.assumptionQuality}): super._();
  factory _BusinessJudgmentDto.fromJson(Map<String, dynamic> json) => _$BusinessJudgmentDtoFromJson(json);

@override final  int score;
@override final  String feedback;
@override final  bool assumptionsStated;
@override final  bool assumptionsJustified;
@override final  String assumptionQuality;

/// Create a copy of BusinessJudgmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessJudgmentDtoCopyWith<_BusinessJudgmentDto> get copyWith => __$BusinessJudgmentDtoCopyWithImpl<_BusinessJudgmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessJudgmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessJudgmentDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.assumptionsStated, assumptionsStated) || other.assumptionsStated == assumptionsStated)&&(identical(other.assumptionsJustified, assumptionsJustified) || other.assumptionsJustified == assumptionsJustified)&&(identical(other.assumptionQuality, assumptionQuality) || other.assumptionQuality == assumptionQuality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,assumptionsStated,assumptionsJustified,assumptionQuality);

@override
String toString() {
  return 'BusinessJudgmentDto(score: $score, feedback: $feedback, assumptionsStated: $assumptionsStated, assumptionsJustified: $assumptionsJustified, assumptionQuality: $assumptionQuality)';
}


}

/// @nodoc
abstract mixin class _$BusinessJudgmentDtoCopyWith<$Res> implements $BusinessJudgmentDtoCopyWith<$Res> {
  factory _$BusinessJudgmentDtoCopyWith(_BusinessJudgmentDto value, $Res Function(_BusinessJudgmentDto) _then) = __$BusinessJudgmentDtoCopyWithImpl;
@override @useResult
$Res call({
 int score, String feedback, bool assumptionsStated, bool assumptionsJustified, String assumptionQuality
});




}
/// @nodoc
class __$BusinessJudgmentDtoCopyWithImpl<$Res>
    implements _$BusinessJudgmentDtoCopyWith<$Res> {
  __$BusinessJudgmentDtoCopyWithImpl(this._self, this._then);

  final _BusinessJudgmentDto _self;
  final $Res Function(_BusinessJudgmentDto) _then;

/// Create a copy of BusinessJudgmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? feedback = null,Object? assumptionsStated = null,Object? assumptionsJustified = null,Object? assumptionQuality = null,}) {
  return _then(_BusinessJudgmentDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,assumptionsStated: null == assumptionsStated ? _self.assumptionsStated : assumptionsStated // ignore: cast_nullable_to_non_nullable
as bool,assumptionsJustified: null == assumptionsJustified ? _self.assumptionsJustified : assumptionsJustified // ignore: cast_nullable_to_non_nullable
as bool,assumptionQuality: null == assumptionQuality ? _self.assumptionQuality : assumptionQuality // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QuantitativeSkillsDto {

 int get score; String get feedback; bool get mathShownStepByStep; bool get mathVerbalized; bool get calculationsAccurate;
/// Create a copy of QuantitativeSkillsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuantitativeSkillsDtoCopyWith<QuantitativeSkillsDto> get copyWith => _$QuantitativeSkillsDtoCopyWithImpl<QuantitativeSkillsDto>(this as QuantitativeSkillsDto, _$identity);

  /// Serializes this QuantitativeSkillsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuantitativeSkillsDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.mathShownStepByStep, mathShownStepByStep) || other.mathShownStepByStep == mathShownStepByStep)&&(identical(other.mathVerbalized, mathVerbalized) || other.mathVerbalized == mathVerbalized)&&(identical(other.calculationsAccurate, calculationsAccurate) || other.calculationsAccurate == calculationsAccurate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,mathShownStepByStep,mathVerbalized,calculationsAccurate);

@override
String toString() {
  return 'QuantitativeSkillsDto(score: $score, feedback: $feedback, mathShownStepByStep: $mathShownStepByStep, mathVerbalized: $mathVerbalized, calculationsAccurate: $calculationsAccurate)';
}


}

/// @nodoc
abstract mixin class $QuantitativeSkillsDtoCopyWith<$Res>  {
  factory $QuantitativeSkillsDtoCopyWith(QuantitativeSkillsDto value, $Res Function(QuantitativeSkillsDto) _then) = _$QuantitativeSkillsDtoCopyWithImpl;
@useResult
$Res call({
 int score, String feedback, bool mathShownStepByStep, bool mathVerbalized, bool calculationsAccurate
});




}
/// @nodoc
class _$QuantitativeSkillsDtoCopyWithImpl<$Res>
    implements $QuantitativeSkillsDtoCopyWith<$Res> {
  _$QuantitativeSkillsDtoCopyWithImpl(this._self, this._then);

  final QuantitativeSkillsDto _self;
  final $Res Function(QuantitativeSkillsDto) _then;

/// Create a copy of QuantitativeSkillsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? feedback = null,Object? mathShownStepByStep = null,Object? mathVerbalized = null,Object? calculationsAccurate = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,mathShownStepByStep: null == mathShownStepByStep ? _self.mathShownStepByStep : mathShownStepByStep // ignore: cast_nullable_to_non_nullable
as bool,mathVerbalized: null == mathVerbalized ? _self.mathVerbalized : mathVerbalized // ignore: cast_nullable_to_non_nullable
as bool,calculationsAccurate: null == calculationsAccurate ? _self.calculationsAccurate : calculationsAccurate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [QuantitativeSkillsDto].
extension QuantitativeSkillsDtoPatterns on QuantitativeSkillsDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuantitativeSkillsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuantitativeSkillsDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuantitativeSkillsDto value)  $default,){
final _that = this;
switch (_that) {
case _QuantitativeSkillsDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuantitativeSkillsDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuantitativeSkillsDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  String feedback,  bool mathShownStepByStep,  bool mathVerbalized,  bool calculationsAccurate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuantitativeSkillsDto() when $default != null:
return $default(_that.score,_that.feedback,_that.mathShownStepByStep,_that.mathVerbalized,_that.calculationsAccurate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  String feedback,  bool mathShownStepByStep,  bool mathVerbalized,  bool calculationsAccurate)  $default,) {final _that = this;
switch (_that) {
case _QuantitativeSkillsDto():
return $default(_that.score,_that.feedback,_that.mathShownStepByStep,_that.mathVerbalized,_that.calculationsAccurate);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  String feedback,  bool mathShownStepByStep,  bool mathVerbalized,  bool calculationsAccurate)?  $default,) {final _that = this;
switch (_that) {
case _QuantitativeSkillsDto() when $default != null:
return $default(_that.score,_that.feedback,_that.mathShownStepByStep,_that.mathVerbalized,_that.calculationsAccurate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuantitativeSkillsDto extends QuantitativeSkillsDto {
  const _QuantitativeSkillsDto({required this.score, required this.feedback, required this.mathShownStepByStep, required this.mathVerbalized, required this.calculationsAccurate}): super._();
  factory _QuantitativeSkillsDto.fromJson(Map<String, dynamic> json) => _$QuantitativeSkillsDtoFromJson(json);

@override final  int score;
@override final  String feedback;
@override final  bool mathShownStepByStep;
@override final  bool mathVerbalized;
@override final  bool calculationsAccurate;

/// Create a copy of QuantitativeSkillsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuantitativeSkillsDtoCopyWith<_QuantitativeSkillsDto> get copyWith => __$QuantitativeSkillsDtoCopyWithImpl<_QuantitativeSkillsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuantitativeSkillsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuantitativeSkillsDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.mathShownStepByStep, mathShownStepByStep) || other.mathShownStepByStep == mathShownStepByStep)&&(identical(other.mathVerbalized, mathVerbalized) || other.mathVerbalized == mathVerbalized)&&(identical(other.calculationsAccurate, calculationsAccurate) || other.calculationsAccurate == calculationsAccurate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,mathShownStepByStep,mathVerbalized,calculationsAccurate);

@override
String toString() {
  return 'QuantitativeSkillsDto(score: $score, feedback: $feedback, mathShownStepByStep: $mathShownStepByStep, mathVerbalized: $mathVerbalized, calculationsAccurate: $calculationsAccurate)';
}


}

/// @nodoc
abstract mixin class _$QuantitativeSkillsDtoCopyWith<$Res> implements $QuantitativeSkillsDtoCopyWith<$Res> {
  factory _$QuantitativeSkillsDtoCopyWith(_QuantitativeSkillsDto value, $Res Function(_QuantitativeSkillsDto) _then) = __$QuantitativeSkillsDtoCopyWithImpl;
@override @useResult
$Res call({
 int score, String feedback, bool mathShownStepByStep, bool mathVerbalized, bool calculationsAccurate
});




}
/// @nodoc
class __$QuantitativeSkillsDtoCopyWithImpl<$Res>
    implements _$QuantitativeSkillsDtoCopyWith<$Res> {
  __$QuantitativeSkillsDtoCopyWithImpl(this._self, this._then);

  final _QuantitativeSkillsDto _self;
  final $Res Function(_QuantitativeSkillsDto) _then;

/// Create a copy of QuantitativeSkillsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? feedback = null,Object? mathShownStepByStep = null,Object? mathVerbalized = null,Object? calculationsAccurate = null,}) {
  return _then(_QuantitativeSkillsDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,mathShownStepByStep: null == mathShownStepByStep ? _self.mathShownStepByStep : mathShownStepByStep // ignore: cast_nullable_to_non_nullable
as bool,mathVerbalized: null == mathVerbalized ? _self.mathVerbalized : mathVerbalized // ignore: cast_nullable_to_non_nullable
as bool,calculationsAccurate: null == calculationsAccurate ? _self.calculationsAccurate : calculationsAccurate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CommunicationDto {

 int get score; String get feedback; String? get paceAnalysis; int? get fillersCount; int? get pausesCount;
/// Create a copy of CommunicationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommunicationDtoCopyWith<CommunicationDto> get copyWith => _$CommunicationDtoCopyWithImpl<CommunicationDto>(this as CommunicationDto, _$identity);

  /// Serializes this CommunicationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommunicationDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.paceAnalysis, paceAnalysis) || other.paceAnalysis == paceAnalysis)&&(identical(other.fillersCount, fillersCount) || other.fillersCount == fillersCount)&&(identical(other.pausesCount, pausesCount) || other.pausesCount == pausesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,paceAnalysis,fillersCount,pausesCount);

@override
String toString() {
  return 'CommunicationDto(score: $score, feedback: $feedback, paceAnalysis: $paceAnalysis, fillersCount: $fillersCount, pausesCount: $pausesCount)';
}


}

/// @nodoc
abstract mixin class $CommunicationDtoCopyWith<$Res>  {
  factory $CommunicationDtoCopyWith(CommunicationDto value, $Res Function(CommunicationDto) _then) = _$CommunicationDtoCopyWithImpl;
@useResult
$Res call({
 int score, String feedback, String? paceAnalysis, int? fillersCount, int? pausesCount
});




}
/// @nodoc
class _$CommunicationDtoCopyWithImpl<$Res>
    implements $CommunicationDtoCopyWith<$Res> {
  _$CommunicationDtoCopyWithImpl(this._self, this._then);

  final CommunicationDto _self;
  final $Res Function(CommunicationDto) _then;

/// Create a copy of CommunicationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? feedback = null,Object? paceAnalysis = freezed,Object? fillersCount = freezed,Object? pausesCount = freezed,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,paceAnalysis: freezed == paceAnalysis ? _self.paceAnalysis : paceAnalysis // ignore: cast_nullable_to_non_nullable
as String?,fillersCount: freezed == fillersCount ? _self.fillersCount : fillersCount // ignore: cast_nullable_to_non_nullable
as int?,pausesCount: freezed == pausesCount ? _self.pausesCount : pausesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommunicationDto].
extension CommunicationDtoPatterns on CommunicationDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommunicationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommunicationDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommunicationDto value)  $default,){
final _that = this;
switch (_that) {
case _CommunicationDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommunicationDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommunicationDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  String feedback,  String? paceAnalysis,  int? fillersCount,  int? pausesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommunicationDto() when $default != null:
return $default(_that.score,_that.feedback,_that.paceAnalysis,_that.fillersCount,_that.pausesCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  String feedback,  String? paceAnalysis,  int? fillersCount,  int? pausesCount)  $default,) {final _that = this;
switch (_that) {
case _CommunicationDto():
return $default(_that.score,_that.feedback,_that.paceAnalysis,_that.fillersCount,_that.pausesCount);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  String feedback,  String? paceAnalysis,  int? fillersCount,  int? pausesCount)?  $default,) {final _that = this;
switch (_that) {
case _CommunicationDto() when $default != null:
return $default(_that.score,_that.feedback,_that.paceAnalysis,_that.fillersCount,_that.pausesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommunicationDto extends CommunicationDto {
  const _CommunicationDto({required this.score, required this.feedback, this.paceAnalysis, this.fillersCount, this.pausesCount}): super._();
  factory _CommunicationDto.fromJson(Map<String, dynamic> json) => _$CommunicationDtoFromJson(json);

@override final  int score;
@override final  String feedback;
@override final  String? paceAnalysis;
@override final  int? fillersCount;
@override final  int? pausesCount;

/// Create a copy of CommunicationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommunicationDtoCopyWith<_CommunicationDto> get copyWith => __$CommunicationDtoCopyWithImpl<_CommunicationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommunicationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommunicationDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.paceAnalysis, paceAnalysis) || other.paceAnalysis == paceAnalysis)&&(identical(other.fillersCount, fillersCount) || other.fillersCount == fillersCount)&&(identical(other.pausesCount, pausesCount) || other.pausesCount == pausesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,paceAnalysis,fillersCount,pausesCount);

@override
String toString() {
  return 'CommunicationDto(score: $score, feedback: $feedback, paceAnalysis: $paceAnalysis, fillersCount: $fillersCount, pausesCount: $pausesCount)';
}


}

/// @nodoc
abstract mixin class _$CommunicationDtoCopyWith<$Res> implements $CommunicationDtoCopyWith<$Res> {
  factory _$CommunicationDtoCopyWith(_CommunicationDto value, $Res Function(_CommunicationDto) _then) = __$CommunicationDtoCopyWithImpl;
@override @useResult
$Res call({
 int score, String feedback, String? paceAnalysis, int? fillersCount, int? pausesCount
});




}
/// @nodoc
class __$CommunicationDtoCopyWithImpl<$Res>
    implements _$CommunicationDtoCopyWith<$Res> {
  __$CommunicationDtoCopyWithImpl(this._self, this._then);

  final _CommunicationDto _self;
  final $Res Function(_CommunicationDto) _then;

/// Create a copy of CommunicationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? feedback = null,Object? paceAnalysis = freezed,Object? fillersCount = freezed,Object? pausesCount = freezed,}) {
  return _then(_CommunicationDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,paceAnalysis: freezed == paceAnalysis ? _self.paceAnalysis : paceAnalysis // ignore: cast_nullable_to_non_nullable
as String?,fillersCount: freezed == fillersCount ? _self.fillersCount : fillersCount // ignore: cast_nullable_to_non_nullable
as int?,pausesCount: freezed == pausesCount ? _self.pausesCount : pausesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SanityCheckDto {

 int get score; String get feedback; bool get sanityCheckPerformed; bool get sanityCheckVerbalized;
/// Create a copy of SanityCheckDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SanityCheckDtoCopyWith<SanityCheckDto> get copyWith => _$SanityCheckDtoCopyWithImpl<SanityCheckDto>(this as SanityCheckDto, _$identity);

  /// Serializes this SanityCheckDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SanityCheckDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.sanityCheckPerformed, sanityCheckPerformed) || other.sanityCheckPerformed == sanityCheckPerformed)&&(identical(other.sanityCheckVerbalized, sanityCheckVerbalized) || other.sanityCheckVerbalized == sanityCheckVerbalized));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,sanityCheckPerformed,sanityCheckVerbalized);

@override
String toString() {
  return 'SanityCheckDto(score: $score, feedback: $feedback, sanityCheckPerformed: $sanityCheckPerformed, sanityCheckVerbalized: $sanityCheckVerbalized)';
}


}

/// @nodoc
abstract mixin class $SanityCheckDtoCopyWith<$Res>  {
  factory $SanityCheckDtoCopyWith(SanityCheckDto value, $Res Function(SanityCheckDto) _then) = _$SanityCheckDtoCopyWithImpl;
@useResult
$Res call({
 int score, String feedback, bool sanityCheckPerformed, bool sanityCheckVerbalized
});




}
/// @nodoc
class _$SanityCheckDtoCopyWithImpl<$Res>
    implements $SanityCheckDtoCopyWith<$Res> {
  _$SanityCheckDtoCopyWithImpl(this._self, this._then);

  final SanityCheckDto _self;
  final $Res Function(SanityCheckDto) _then;

/// Create a copy of SanityCheckDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? feedback = null,Object? sanityCheckPerformed = null,Object? sanityCheckVerbalized = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,sanityCheckPerformed: null == sanityCheckPerformed ? _self.sanityCheckPerformed : sanityCheckPerformed // ignore: cast_nullable_to_non_nullable
as bool,sanityCheckVerbalized: null == sanityCheckVerbalized ? _self.sanityCheckVerbalized : sanityCheckVerbalized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SanityCheckDto].
extension SanityCheckDtoPatterns on SanityCheckDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SanityCheckDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SanityCheckDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SanityCheckDto value)  $default,){
final _that = this;
switch (_that) {
case _SanityCheckDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SanityCheckDto value)?  $default,){
final _that = this;
switch (_that) {
case _SanityCheckDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  String feedback,  bool sanityCheckPerformed,  bool sanityCheckVerbalized)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SanityCheckDto() when $default != null:
return $default(_that.score,_that.feedback,_that.sanityCheckPerformed,_that.sanityCheckVerbalized);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  String feedback,  bool sanityCheckPerformed,  bool sanityCheckVerbalized)  $default,) {final _that = this;
switch (_that) {
case _SanityCheckDto():
return $default(_that.score,_that.feedback,_that.sanityCheckPerformed,_that.sanityCheckVerbalized);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  String feedback,  bool sanityCheckPerformed,  bool sanityCheckVerbalized)?  $default,) {final _that = this;
switch (_that) {
case _SanityCheckDto() when $default != null:
return $default(_that.score,_that.feedback,_that.sanityCheckPerformed,_that.sanityCheckVerbalized);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SanityCheckDto extends SanityCheckDto {
  const _SanityCheckDto({required this.score, required this.feedback, required this.sanityCheckPerformed, required this.sanityCheckVerbalized}): super._();
  factory _SanityCheckDto.fromJson(Map<String, dynamic> json) => _$SanityCheckDtoFromJson(json);

@override final  int score;
@override final  String feedback;
@override final  bool sanityCheckPerformed;
@override final  bool sanityCheckVerbalized;

/// Create a copy of SanityCheckDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SanityCheckDtoCopyWith<_SanityCheckDto> get copyWith => __$SanityCheckDtoCopyWithImpl<_SanityCheckDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SanityCheckDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SanityCheckDto&&(identical(other.score, score) || other.score == score)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.sanityCheckPerformed, sanityCheckPerformed) || other.sanityCheckPerformed == sanityCheckPerformed)&&(identical(other.sanityCheckVerbalized, sanityCheckVerbalized) || other.sanityCheckVerbalized == sanityCheckVerbalized));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,feedback,sanityCheckPerformed,sanityCheckVerbalized);

@override
String toString() {
  return 'SanityCheckDto(score: $score, feedback: $feedback, sanityCheckPerformed: $sanityCheckPerformed, sanityCheckVerbalized: $sanityCheckVerbalized)';
}


}

/// @nodoc
abstract mixin class _$SanityCheckDtoCopyWith<$Res> implements $SanityCheckDtoCopyWith<$Res> {
  factory _$SanityCheckDtoCopyWith(_SanityCheckDto value, $Res Function(_SanityCheckDto) _then) = __$SanityCheckDtoCopyWithImpl;
@override @useResult
$Res call({
 int score, String feedback, bool sanityCheckPerformed, bool sanityCheckVerbalized
});




}
/// @nodoc
class __$SanityCheckDtoCopyWithImpl<$Res>
    implements _$SanityCheckDtoCopyWith<$Res> {
  __$SanityCheckDtoCopyWithImpl(this._self, this._then);

  final _SanityCheckDto _self;
  final $Res Function(_SanityCheckDto) _then;

/// Create a copy of SanityCheckDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? feedback = null,Object? sanityCheckPerformed = null,Object? sanityCheckVerbalized = null,}) {
  return _then(_SanityCheckDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,sanityCheckPerformed: null == sanityCheckPerformed ? _self.sanityCheckPerformed : sanityCheckPerformed // ignore: cast_nullable_to_non_nullable
as bool,sanityCheckVerbalized: null == sanityCheckVerbalized ? _self.sanityCheckVerbalized : sanityCheckVerbalized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PriorityImprovementDto {

 String get timestamp; String get feedback;
/// Create a copy of PriorityImprovementDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriorityImprovementDtoCopyWith<PriorityImprovementDto> get copyWith => _$PriorityImprovementDtoCopyWithImpl<PriorityImprovementDto>(this as PriorityImprovementDto, _$identity);

  /// Serializes this PriorityImprovementDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriorityImprovementDto&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.feedback, feedback) || other.feedback == feedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,feedback);

@override
String toString() {
  return 'PriorityImprovementDto(timestamp: $timestamp, feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $PriorityImprovementDtoCopyWith<$Res>  {
  factory $PriorityImprovementDtoCopyWith(PriorityImprovementDto value, $Res Function(PriorityImprovementDto) _then) = _$PriorityImprovementDtoCopyWithImpl;
@useResult
$Res call({
 String timestamp, String feedback
});




}
/// @nodoc
class _$PriorityImprovementDtoCopyWithImpl<$Res>
    implements $PriorityImprovementDtoCopyWith<$Res> {
  _$PriorityImprovementDtoCopyWithImpl(this._self, this._then);

  final PriorityImprovementDto _self;
  final $Res Function(PriorityImprovementDto) _then;

/// Create a copy of PriorityImprovementDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? feedback = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PriorityImprovementDto].
extension PriorityImprovementDtoPatterns on PriorityImprovementDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriorityImprovementDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriorityImprovementDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriorityImprovementDto value)  $default,){
final _that = this;
switch (_that) {
case _PriorityImprovementDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriorityImprovementDto value)?  $default,){
final _that = this;
switch (_that) {
case _PriorityImprovementDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timestamp,  String feedback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriorityImprovementDto() when $default != null:
return $default(_that.timestamp,_that.feedback);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timestamp,  String feedback)  $default,) {final _that = this;
switch (_that) {
case _PriorityImprovementDto():
return $default(_that.timestamp,_that.feedback);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timestamp,  String feedback)?  $default,) {final _that = this;
switch (_that) {
case _PriorityImprovementDto() when $default != null:
return $default(_that.timestamp,_that.feedback);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriorityImprovementDto extends PriorityImprovementDto {
  const _PriorityImprovementDto({required this.timestamp, required this.feedback}): super._();
  factory _PriorityImprovementDto.fromJson(Map<String, dynamic> json) => _$PriorityImprovementDtoFromJson(json);

@override final  String timestamp;
@override final  String feedback;

/// Create a copy of PriorityImprovementDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriorityImprovementDtoCopyWith<_PriorityImprovementDto> get copyWith => __$PriorityImprovementDtoCopyWithImpl<_PriorityImprovementDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriorityImprovementDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriorityImprovementDto&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.feedback, feedback) || other.feedback == feedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,feedback);

@override
String toString() {
  return 'PriorityImprovementDto(timestamp: $timestamp, feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class _$PriorityImprovementDtoCopyWith<$Res> implements $PriorityImprovementDtoCopyWith<$Res> {
  factory _$PriorityImprovementDtoCopyWith(_PriorityImprovementDto value, $Res Function(_PriorityImprovementDto) _then) = __$PriorityImprovementDtoCopyWithImpl;
@override @useResult
$Res call({
 String timestamp, String feedback
});




}
/// @nodoc
class __$PriorityImprovementDtoCopyWithImpl<$Res>
    implements _$PriorityImprovementDtoCopyWith<$Res> {
  __$PriorityImprovementDtoCopyWithImpl(this._self, this._then);

  final _PriorityImprovementDto _self;
  final $Res Function(_PriorityImprovementDto) _then;

/// Create a copy of PriorityImprovementDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? feedback = null,}) {
  return _then(_PriorityImprovementDto(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
