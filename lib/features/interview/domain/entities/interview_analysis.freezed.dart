// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterviewAnalysis {

 String get id; String get status; String get transcript; double get duration; String? get recordingUrl; Metrics get metrics;// Generic interview (existing)
 AIAnalysis? get aiAnalysis;// Market sizing specific fields
 String? get caseQuestion; String? get difficulty; String? get candidateAnswer; CaseAnalysis? get caseAnalysis;
/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewAnalysisCopyWith<InterviewAnalysis> get copyWith => _$InterviewAnalysisCopyWithImpl<InterviewAnalysis>(this as InterviewAnalysis, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewAnalysis&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.transcript, transcript) || other.transcript == transcript)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis)&&(identical(other.caseQuestion, caseQuestion) || other.caseQuestion == caseQuestion)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.candidateAnswer, candidateAnswer) || other.candidateAnswer == candidateAnswer)&&(identical(other.caseAnalysis, caseAnalysis) || other.caseAnalysis == caseAnalysis));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,transcript,duration,recordingUrl,metrics,aiAnalysis,caseQuestion,difficulty,candidateAnswer,caseAnalysis);

@override
String toString() {
  return 'InterviewAnalysis(id: $id, status: $status, transcript: $transcript, duration: $duration, recordingUrl: $recordingUrl, metrics: $metrics, aiAnalysis: $aiAnalysis, caseQuestion: $caseQuestion, difficulty: $difficulty, candidateAnswer: $candidateAnswer, caseAnalysis: $caseAnalysis)';
}


}

/// @nodoc
abstract mixin class $InterviewAnalysisCopyWith<$Res>  {
  factory $InterviewAnalysisCopyWith(InterviewAnalysis value, $Res Function(InterviewAnalysis) _then) = _$InterviewAnalysisCopyWithImpl;
@useResult
$Res call({
 String id, String status, String transcript, double duration, String? recordingUrl, Metrics metrics, AIAnalysis? aiAnalysis, String? caseQuestion, String? difficulty, String? candidateAnswer, CaseAnalysis? caseAnalysis
});


$MetricsCopyWith<$Res> get metrics;$AIAnalysisCopyWith<$Res>? get aiAnalysis;$CaseAnalysisCopyWith<$Res>? get caseAnalysis;

}
/// @nodoc
class _$InterviewAnalysisCopyWithImpl<$Res>
    implements $InterviewAnalysisCopyWith<$Res> {
  _$InterviewAnalysisCopyWithImpl(this._self, this._then);

  final InterviewAnalysis _self;
  final $Res Function(InterviewAnalysis) _then;

/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? transcript = null,Object? duration = null,Object? recordingUrl = freezed,Object? metrics = null,Object? aiAnalysis = freezed,Object? caseQuestion = freezed,Object? difficulty = freezed,Object? candidateAnswer = freezed,Object? caseAnalysis = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transcript: null == transcript ? _self.transcript : transcript // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as Metrics,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as AIAnalysis?,caseQuestion: freezed == caseQuestion ? _self.caseQuestion : caseQuestion // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,candidateAnswer: freezed == candidateAnswer ? _self.candidateAnswer : candidateAnswer // ignore: cast_nullable_to_non_nullable
as String?,caseAnalysis: freezed == caseAnalysis ? _self.caseAnalysis : caseAnalysis // ignore: cast_nullable_to_non_nullable
as CaseAnalysis?,
  ));
}
/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsCopyWith<$Res> get metrics {
  
  return $MetricsCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIAnalysisCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $AIAnalysisCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
}/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CaseAnalysisCopyWith<$Res>? get caseAnalysis {
    if (_self.caseAnalysis == null) {
    return null;
  }

  return $CaseAnalysisCopyWith<$Res>(_self.caseAnalysis!, (value) {
    return _then(_self.copyWith(caseAnalysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [InterviewAnalysis].
extension InterviewAnalysisPatterns on InterviewAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _InterviewAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String transcript,  double duration,  String? recordingUrl,  Metrics metrics,  AIAnalysis? aiAnalysis,  String? caseQuestion,  String? difficulty,  String? candidateAnswer,  CaseAnalysis? caseAnalysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewAnalysis() when $default != null:
return $default(_that.id,_that.status,_that.transcript,_that.duration,_that.recordingUrl,_that.metrics,_that.aiAnalysis,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.caseAnalysis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String transcript,  double duration,  String? recordingUrl,  Metrics metrics,  AIAnalysis? aiAnalysis,  String? caseQuestion,  String? difficulty,  String? candidateAnswer,  CaseAnalysis? caseAnalysis)  $default,) {final _that = this;
switch (_that) {
case _InterviewAnalysis():
return $default(_that.id,_that.status,_that.transcript,_that.duration,_that.recordingUrl,_that.metrics,_that.aiAnalysis,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.caseAnalysis);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String transcript,  double duration,  String? recordingUrl,  Metrics metrics,  AIAnalysis? aiAnalysis,  String? caseQuestion,  String? difficulty,  String? candidateAnswer,  CaseAnalysis? caseAnalysis)?  $default,) {final _that = this;
switch (_that) {
case _InterviewAnalysis() when $default != null:
return $default(_that.id,_that.status,_that.transcript,_that.duration,_that.recordingUrl,_that.metrics,_that.aiAnalysis,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.caseAnalysis);case _:
  return null;

}
}

}

/// @nodoc


class _InterviewAnalysis extends InterviewAnalysis {
  const _InterviewAnalysis({required this.id, required this.status, required this.transcript, required this.duration, this.recordingUrl, required this.metrics, this.aiAnalysis, this.caseQuestion, this.difficulty, this.candidateAnswer, this.caseAnalysis}): super._();
  

@override final  String id;
@override final  String status;
@override final  String transcript;
@override final  double duration;
@override final  String? recordingUrl;
@override final  Metrics metrics;
// Generic interview (existing)
@override final  AIAnalysis? aiAnalysis;
// Market sizing specific fields
@override final  String? caseQuestion;
@override final  String? difficulty;
@override final  String? candidateAnswer;
@override final  CaseAnalysis? caseAnalysis;

/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewAnalysisCopyWith<_InterviewAnalysis> get copyWith => __$InterviewAnalysisCopyWithImpl<_InterviewAnalysis>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewAnalysis&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.transcript, transcript) || other.transcript == transcript)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis)&&(identical(other.caseQuestion, caseQuestion) || other.caseQuestion == caseQuestion)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.candidateAnswer, candidateAnswer) || other.candidateAnswer == candidateAnswer)&&(identical(other.caseAnalysis, caseAnalysis) || other.caseAnalysis == caseAnalysis));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,transcript,duration,recordingUrl,metrics,aiAnalysis,caseQuestion,difficulty,candidateAnswer,caseAnalysis);

@override
String toString() {
  return 'InterviewAnalysis(id: $id, status: $status, transcript: $transcript, duration: $duration, recordingUrl: $recordingUrl, metrics: $metrics, aiAnalysis: $aiAnalysis, caseQuestion: $caseQuestion, difficulty: $difficulty, candidateAnswer: $candidateAnswer, caseAnalysis: $caseAnalysis)';
}


}

/// @nodoc
abstract mixin class _$InterviewAnalysisCopyWith<$Res> implements $InterviewAnalysisCopyWith<$Res> {
  factory _$InterviewAnalysisCopyWith(_InterviewAnalysis value, $Res Function(_InterviewAnalysis) _then) = __$InterviewAnalysisCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String transcript, double duration, String? recordingUrl, Metrics metrics, AIAnalysis? aiAnalysis, String? caseQuestion, String? difficulty, String? candidateAnswer, CaseAnalysis? caseAnalysis
});


@override $MetricsCopyWith<$Res> get metrics;@override $AIAnalysisCopyWith<$Res>? get aiAnalysis;@override $CaseAnalysisCopyWith<$Res>? get caseAnalysis;

}
/// @nodoc
class __$InterviewAnalysisCopyWithImpl<$Res>
    implements _$InterviewAnalysisCopyWith<$Res> {
  __$InterviewAnalysisCopyWithImpl(this._self, this._then);

  final _InterviewAnalysis _self;
  final $Res Function(_InterviewAnalysis) _then;

/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? transcript = null,Object? duration = null,Object? recordingUrl = freezed,Object? metrics = null,Object? aiAnalysis = freezed,Object? caseQuestion = freezed,Object? difficulty = freezed,Object? candidateAnswer = freezed,Object? caseAnalysis = freezed,}) {
  return _then(_InterviewAnalysis(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transcript: null == transcript ? _self.transcript : transcript // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as Metrics,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as AIAnalysis?,caseQuestion: freezed == caseQuestion ? _self.caseQuestion : caseQuestion // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,candidateAnswer: freezed == candidateAnswer ? _self.candidateAnswer : candidateAnswer // ignore: cast_nullable_to_non_nullable
as String?,caseAnalysis: freezed == caseAnalysis ? _self.caseAnalysis : caseAnalysis // ignore: cast_nullable_to_non_nullable
as CaseAnalysis?,
  ));
}

/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsCopyWith<$Res> get metrics {
  
  return $MetricsCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIAnalysisCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $AIAnalysisCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
}/// Create a copy of InterviewAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CaseAnalysisCopyWith<$Res>? get caseAnalysis {
    if (_self.caseAnalysis == null) {
    return null;
  }

  return $CaseAnalysisCopyWith<$Res>(_self.caseAnalysis!, (value) {
    return _then(_self.copyWith(caseAnalysis: value));
  });
}
}

/// @nodoc
mixin _$Metrics {

 int get averagePace; int get totalWords; int get fillerCount; int get pauseCount; List<PacePoint> get paceTimeline;
/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricsCopyWith<Metrics> get copyWith => _$MetricsCopyWithImpl<Metrics>(this as Metrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metrics&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount)&&const DeepCollectionEquality().equals(other.paceTimeline, paceTimeline));
}


@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount,const DeepCollectionEquality().hash(paceTimeline));

@override
String toString() {
  return 'Metrics(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount, paceTimeline: $paceTimeline)';
}


}

/// @nodoc
abstract mixin class $MetricsCopyWith<$Res>  {
  factory $MetricsCopyWith(Metrics value, $Res Function(Metrics) _then) = _$MetricsCopyWithImpl;
@useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount, List<PacePoint> paceTimeline
});




}
/// @nodoc
class _$MetricsCopyWithImpl<$Res>
    implements $MetricsCopyWith<$Res> {
  _$MetricsCopyWithImpl(this._self, this._then);

  final Metrics _self;
  final $Res Function(Metrics) _then;

/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,Object? paceTimeline = null,}) {
  return _then(_self.copyWith(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,paceTimeline: null == paceTimeline ? _self.paceTimeline : paceTimeline // ignore: cast_nullable_to_non_nullable
as List<PacePoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [Metrics].
extension MetricsPatterns on Metrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Metrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Metrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Metrics value)  $default,){
final _that = this;
switch (_that) {
case _Metrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Metrics value)?  $default,){
final _that = this;
switch (_that) {
case _Metrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount,  List<PacePoint> paceTimeline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Metrics() when $default != null:
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount,_that.paceTimeline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount,  List<PacePoint> paceTimeline)  $default,) {final _that = this;
switch (_that) {
case _Metrics():
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount,_that.paceTimeline);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount,  List<PacePoint> paceTimeline)?  $default,) {final _that = this;
switch (_that) {
case _Metrics() when $default != null:
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount,_that.paceTimeline);case _:
  return null;

}
}

}

/// @nodoc


class _Metrics implements Metrics {
  const _Metrics({required this.averagePace, required this.totalWords, required this.fillerCount, required this.pauseCount, required final  List<PacePoint> paceTimeline}): _paceTimeline = paceTimeline;
  

@override final  int averagePace;
@override final  int totalWords;
@override final  int fillerCount;
@override final  int pauseCount;
 final  List<PacePoint> _paceTimeline;
@override List<PacePoint> get paceTimeline {
  if (_paceTimeline is EqualUnmodifiableListView) return _paceTimeline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paceTimeline);
}


/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricsCopyWith<_Metrics> get copyWith => __$MetricsCopyWithImpl<_Metrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metrics&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount)&&const DeepCollectionEquality().equals(other._paceTimeline, _paceTimeline));
}


@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount,const DeepCollectionEquality().hash(_paceTimeline));

@override
String toString() {
  return 'Metrics(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount, paceTimeline: $paceTimeline)';
}


}

/// @nodoc
abstract mixin class _$MetricsCopyWith<$Res> implements $MetricsCopyWith<$Res> {
  factory _$MetricsCopyWith(_Metrics value, $Res Function(_Metrics) _then) = __$MetricsCopyWithImpl;
@override @useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount, List<PacePoint> paceTimeline
});




}
/// @nodoc
class __$MetricsCopyWithImpl<$Res>
    implements _$MetricsCopyWith<$Res> {
  __$MetricsCopyWithImpl(this._self, this._then);

  final _Metrics _self;
  final $Res Function(_Metrics) _then;

/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,Object? paceTimeline = null,}) {
  return _then(_Metrics(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,paceTimeline: null == paceTimeline ? _self._paceTimeline : paceTimeline // ignore: cast_nullable_to_non_nullable
as List<PacePoint>,
  ));
}


}

/// @nodoc
mixin _$PacePoint {

 double get timestamp; int get wpm; double get segmentStart; double get segmentEnd;
/// Create a copy of PacePoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PacePointCopyWith<PacePoint> get copyWith => _$PacePointCopyWithImpl<PacePoint>(this as PacePoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PacePoint&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.wpm, wpm) || other.wpm == wpm)&&(identical(other.segmentStart, segmentStart) || other.segmentStart == segmentStart)&&(identical(other.segmentEnd, segmentEnd) || other.segmentEnd == segmentEnd));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,wpm,segmentStart,segmentEnd);

@override
String toString() {
  return 'PacePoint(timestamp: $timestamp, wpm: $wpm, segmentStart: $segmentStart, segmentEnd: $segmentEnd)';
}


}

/// @nodoc
abstract mixin class $PacePointCopyWith<$Res>  {
  factory $PacePointCopyWith(PacePoint value, $Res Function(PacePoint) _then) = _$PacePointCopyWithImpl;
@useResult
$Res call({
 double timestamp, int wpm, double segmentStart, double segmentEnd
});




}
/// @nodoc
class _$PacePointCopyWithImpl<$Res>
    implements $PacePointCopyWith<$Res> {
  _$PacePointCopyWithImpl(this._self, this._then);

  final PacePoint _self;
  final $Res Function(PacePoint) _then;

/// Create a copy of PacePoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? wpm = null,Object? segmentStart = null,Object? segmentEnd = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,wpm: null == wpm ? _self.wpm : wpm // ignore: cast_nullable_to_non_nullable
as int,segmentStart: null == segmentStart ? _self.segmentStart : segmentStart // ignore: cast_nullable_to_non_nullable
as double,segmentEnd: null == segmentEnd ? _self.segmentEnd : segmentEnd // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PacePoint].
extension PacePointPatterns on PacePoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PacePoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PacePoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PacePoint value)  $default,){
final _that = this;
switch (_that) {
case _PacePoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PacePoint value)?  $default,){
final _that = this;
switch (_that) {
case _PacePoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double timestamp,  int wpm,  double segmentStart,  double segmentEnd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PacePoint() when $default != null:
return $default(_that.timestamp,_that.wpm,_that.segmentStart,_that.segmentEnd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double timestamp,  int wpm,  double segmentStart,  double segmentEnd)  $default,) {final _that = this;
switch (_that) {
case _PacePoint():
return $default(_that.timestamp,_that.wpm,_that.segmentStart,_that.segmentEnd);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double timestamp,  int wpm,  double segmentStart,  double segmentEnd)?  $default,) {final _that = this;
switch (_that) {
case _PacePoint() when $default != null:
return $default(_that.timestamp,_that.wpm,_that.segmentStart,_that.segmentEnd);case _:
  return null;

}
}

}

/// @nodoc


class _PacePoint implements PacePoint {
  const _PacePoint({required this.timestamp, required this.wpm, required this.segmentStart, required this.segmentEnd});
  

@override final  double timestamp;
@override final  int wpm;
@override final  double segmentStart;
@override final  double segmentEnd;

/// Create a copy of PacePoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PacePointCopyWith<_PacePoint> get copyWith => __$PacePointCopyWithImpl<_PacePoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PacePoint&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.wpm, wpm) || other.wpm == wpm)&&(identical(other.segmentStart, segmentStart) || other.segmentStart == segmentStart)&&(identical(other.segmentEnd, segmentEnd) || other.segmentEnd == segmentEnd));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp,wpm,segmentStart,segmentEnd);

@override
String toString() {
  return 'PacePoint(timestamp: $timestamp, wpm: $wpm, segmentStart: $segmentStart, segmentEnd: $segmentEnd)';
}


}

/// @nodoc
abstract mixin class _$PacePointCopyWith<$Res> implements $PacePointCopyWith<$Res> {
  factory _$PacePointCopyWith(_PacePoint value, $Res Function(_PacePoint) _then) = __$PacePointCopyWithImpl;
@override @useResult
$Res call({
 double timestamp, int wpm, double segmentStart, double segmentEnd
});




}
/// @nodoc
class __$PacePointCopyWithImpl<$Res>
    implements _$PacePointCopyWith<$Res> {
  __$PacePointCopyWithImpl(this._self, this._then);

  final _PacePoint _self;
  final $Res Function(_PacePoint) _then;

/// Create a copy of PacePoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? wpm = null,Object? segmentStart = null,Object? segmentEnd = null,}) {
  return _then(_PacePoint(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,wpm: null == wpm ? _self.wpm : wpm // ignore: cast_nullable_to_non_nullable
as int,segmentStart: null == segmentStart ? _self.segmentStart : segmentStart // ignore: cast_nullable_to_non_nullable
as double,segmentEnd: null == segmentEnd ? _self.segmentEnd : segmentEnd // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$AIAnalysis {

 double get overallScore; String get summary; String get paceAnalysis; String get fillerAnalysis; double get confidenceScore; List<Improvement> get improvements; List<String> get highlights;
/// Create a copy of AIAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIAnalysisCopyWith<AIAnalysis> get copyWith => _$AIAnalysisCopyWithImpl<AIAnalysis>(this as AIAnalysis, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIAnalysis&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.paceAnalysis, paceAnalysis) || other.paceAnalysis == paceAnalysis)&&(identical(other.fillerAnalysis, fillerAnalysis) || other.fillerAnalysis == fillerAnalysis)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore)&&const DeepCollectionEquality().equals(other.improvements, improvements)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}


@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,paceAnalysis,fillerAnalysis,confidenceScore,const DeepCollectionEquality().hash(improvements),const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'AIAnalysis(overallScore: $overallScore, summary: $summary, paceAnalysis: $paceAnalysis, fillerAnalysis: $fillerAnalysis, confidenceScore: $confidenceScore, improvements: $improvements, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $AIAnalysisCopyWith<$Res>  {
  factory $AIAnalysisCopyWith(AIAnalysis value, $Res Function(AIAnalysis) _then) = _$AIAnalysisCopyWithImpl;
@useResult
$Res call({
 double overallScore, String summary, String paceAnalysis, String fillerAnalysis, double confidenceScore, List<Improvement> improvements, List<String> highlights
});




}
/// @nodoc
class _$AIAnalysisCopyWithImpl<$Res>
    implements $AIAnalysisCopyWith<$Res> {
  _$AIAnalysisCopyWithImpl(this._self, this._then);

  final AIAnalysis _self;
  final $Res Function(AIAnalysis) _then;

/// Create a copy of AIAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overallScore = null,Object? summary = null,Object? paceAnalysis = null,Object? fillerAnalysis = null,Object? confidenceScore = null,Object? improvements = null,Object? highlights = null,}) {
  return _then(_self.copyWith(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,paceAnalysis: null == paceAnalysis ? _self.paceAnalysis : paceAnalysis // ignore: cast_nullable_to_non_nullable
as String,fillerAnalysis: null == fillerAnalysis ? _self.fillerAnalysis : fillerAnalysis // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,improvements: null == improvements ? _self.improvements : improvements // ignore: cast_nullable_to_non_nullable
as List<Improvement>,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AIAnalysis].
extension AIAnalysisPatterns on AIAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _AIAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _AIAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double overallScore,  String summary,  String paceAnalysis,  String fillerAnalysis,  double confidenceScore,  List<Improvement> improvements,  List<String> highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIAnalysis() when $default != null:
return $default(_that.overallScore,_that.summary,_that.paceAnalysis,_that.fillerAnalysis,_that.confidenceScore,_that.improvements,_that.highlights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double overallScore,  String summary,  String paceAnalysis,  String fillerAnalysis,  double confidenceScore,  List<Improvement> improvements,  List<String> highlights)  $default,) {final _that = this;
switch (_that) {
case _AIAnalysis():
return $default(_that.overallScore,_that.summary,_that.paceAnalysis,_that.fillerAnalysis,_that.confidenceScore,_that.improvements,_that.highlights);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double overallScore,  String summary,  String paceAnalysis,  String fillerAnalysis,  double confidenceScore,  List<Improvement> improvements,  List<String> highlights)?  $default,) {final _that = this;
switch (_that) {
case _AIAnalysis() when $default != null:
return $default(_that.overallScore,_that.summary,_that.paceAnalysis,_that.fillerAnalysis,_that.confidenceScore,_that.improvements,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc


class _AIAnalysis implements AIAnalysis {
  const _AIAnalysis({required this.overallScore, required this.summary, required this.paceAnalysis, required this.fillerAnalysis, required this.confidenceScore, required final  List<Improvement> improvements, required final  List<String> highlights}): _improvements = improvements,_highlights = highlights;
  

@override final  double overallScore;
@override final  String summary;
@override final  String paceAnalysis;
@override final  String fillerAnalysis;
@override final  double confidenceScore;
 final  List<Improvement> _improvements;
@override List<Improvement> get improvements {
  if (_improvements is EqualUnmodifiableListView) return _improvements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_improvements);
}

 final  List<String> _highlights;
@override List<String> get highlights {
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlights);
}


/// Create a copy of AIAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIAnalysisCopyWith<_AIAnalysis> get copyWith => __$AIAnalysisCopyWithImpl<_AIAnalysis>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIAnalysis&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.paceAnalysis, paceAnalysis) || other.paceAnalysis == paceAnalysis)&&(identical(other.fillerAnalysis, fillerAnalysis) || other.fillerAnalysis == fillerAnalysis)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore)&&const DeepCollectionEquality().equals(other._improvements, _improvements)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}


@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,paceAnalysis,fillerAnalysis,confidenceScore,const DeepCollectionEquality().hash(_improvements),const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'AIAnalysis(overallScore: $overallScore, summary: $summary, paceAnalysis: $paceAnalysis, fillerAnalysis: $fillerAnalysis, confidenceScore: $confidenceScore, improvements: $improvements, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$AIAnalysisCopyWith<$Res> implements $AIAnalysisCopyWith<$Res> {
  factory _$AIAnalysisCopyWith(_AIAnalysis value, $Res Function(_AIAnalysis) _then) = __$AIAnalysisCopyWithImpl;
@override @useResult
$Res call({
 double overallScore, String summary, String paceAnalysis, String fillerAnalysis, double confidenceScore, List<Improvement> improvements, List<String> highlights
});




}
/// @nodoc
class __$AIAnalysisCopyWithImpl<$Res>
    implements _$AIAnalysisCopyWith<$Res> {
  __$AIAnalysisCopyWithImpl(this._self, this._then);

  final _AIAnalysis _self;
  final $Res Function(_AIAnalysis) _then;

/// Create a copy of AIAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overallScore = null,Object? summary = null,Object? paceAnalysis = null,Object? fillerAnalysis = null,Object? confidenceScore = null,Object? improvements = null,Object? highlights = null,}) {
  return _then(_AIAnalysis(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,paceAnalysis: null == paceAnalysis ? _self.paceAnalysis : paceAnalysis // ignore: cast_nullable_to_non_nullable
as String,fillerAnalysis: null == fillerAnalysis ? _self.fillerAnalysis : fillerAnalysis // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,improvements: null == improvements ? _self._improvements : improvements // ignore: cast_nullable_to_non_nullable
as List<Improvement>,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$Improvement {

 String get title; double get timestamp; String get description;
/// Create a copy of Improvement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImprovementCopyWith<Improvement> get copyWith => _$ImprovementCopyWithImpl<Improvement>(this as Improvement, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Improvement&&(identical(other.title, title) || other.title == title)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,timestamp,description);

@override
String toString() {
  return 'Improvement(title: $title, timestamp: $timestamp, description: $description)';
}


}

/// @nodoc
abstract mixin class $ImprovementCopyWith<$Res>  {
  factory $ImprovementCopyWith(Improvement value, $Res Function(Improvement) _then) = _$ImprovementCopyWithImpl;
@useResult
$Res call({
 String title, double timestamp, String description
});




}
/// @nodoc
class _$ImprovementCopyWithImpl<$Res>
    implements $ImprovementCopyWith<$Res> {
  _$ImprovementCopyWithImpl(this._self, this._then);

  final Improvement _self;
  final $Res Function(Improvement) _then;

/// Create a copy of Improvement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? timestamp = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Improvement].
extension ImprovementPatterns on Improvement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Improvement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Improvement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Improvement value)  $default,){
final _that = this;
switch (_that) {
case _Improvement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Improvement value)?  $default,){
final _that = this;
switch (_that) {
case _Improvement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  double timestamp,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Improvement() when $default != null:
return $default(_that.title,_that.timestamp,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  double timestamp,  String description)  $default,) {final _that = this;
switch (_that) {
case _Improvement():
return $default(_that.title,_that.timestamp,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  double timestamp,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Improvement() when $default != null:
return $default(_that.title,_that.timestamp,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _Improvement implements Improvement {
  const _Improvement({required this.title, required this.timestamp, required this.description});
  

@override final  String title;
@override final  double timestamp;
@override final  String description;

/// Create a copy of Improvement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImprovementCopyWith<_Improvement> get copyWith => __$ImprovementCopyWithImpl<_Improvement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Improvement&&(identical(other.title, title) || other.title == title)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,timestamp,description);

@override
String toString() {
  return 'Improvement(title: $title, timestamp: $timestamp, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ImprovementCopyWith<$Res> implements $ImprovementCopyWith<$Res> {
  factory _$ImprovementCopyWith(_Improvement value, $Res Function(_Improvement) _then) = __$ImprovementCopyWithImpl;
@override @useResult
$Res call({
 String title, double timestamp, String description
});




}
/// @nodoc
class __$ImprovementCopyWithImpl<$Res>
    implements _$ImprovementCopyWith<$Res> {
  __$ImprovementCopyWithImpl(this._self, this._then);

  final _Improvement _self;
  final $Res Function(_Improvement) _then;

/// Create a copy of Improvement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? timestamp = null,Object? description = null,}) {
  return _then(_Improvement(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
