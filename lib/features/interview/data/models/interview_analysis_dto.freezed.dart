// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_analysis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterviewAnalysisDto {

 String get id; String get status; String get transcript; double get duration; String? get recordingUrl; MetricsDto get metrics; AIAnalysisDto? get aiAnalysis;
/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewAnalysisDtoCopyWith<InterviewAnalysisDto> get copyWith => _$InterviewAnalysisDtoCopyWithImpl<InterviewAnalysisDto>(this as InterviewAnalysisDto, _$identity);

  /// Serializes this InterviewAnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewAnalysisDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.transcript, transcript) || other.transcript == transcript)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,transcript,duration,recordingUrl,metrics,aiAnalysis);

@override
String toString() {
  return 'InterviewAnalysisDto(id: $id, status: $status, transcript: $transcript, duration: $duration, recordingUrl: $recordingUrl, metrics: $metrics, aiAnalysis: $aiAnalysis)';
}


}

/// @nodoc
abstract mixin class $InterviewAnalysisDtoCopyWith<$Res>  {
  factory $InterviewAnalysisDtoCopyWith(InterviewAnalysisDto value, $Res Function(InterviewAnalysisDto) _then) = _$InterviewAnalysisDtoCopyWithImpl;
@useResult
$Res call({
 String id, String status, String transcript, double duration, String? recordingUrl, MetricsDto metrics, AIAnalysisDto? aiAnalysis
});


$MetricsDtoCopyWith<$Res> get metrics;$AIAnalysisDtoCopyWith<$Res>? get aiAnalysis;

}
/// @nodoc
class _$InterviewAnalysisDtoCopyWithImpl<$Res>
    implements $InterviewAnalysisDtoCopyWith<$Res> {
  _$InterviewAnalysisDtoCopyWithImpl(this._self, this._then);

  final InterviewAnalysisDto _self;
  final $Res Function(InterviewAnalysisDto) _then;

/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? transcript = null,Object? duration = null,Object? recordingUrl = freezed,Object? metrics = null,Object? aiAnalysis = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transcript: null == transcript ? _self.transcript : transcript // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as MetricsDto,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as AIAnalysisDto?,
  ));
}
/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsDtoCopyWith<$Res> get metrics {
  
  return $MetricsDtoCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIAnalysisDtoCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $AIAnalysisDtoCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [InterviewAnalysisDto].
extension InterviewAnalysisDtoPatterns on InterviewAnalysisDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewAnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewAnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _InterviewAnalysisDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewAnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String transcript,  double duration,  String? recordingUrl,  MetricsDto metrics,  AIAnalysisDto? aiAnalysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewAnalysisDto() when $default != null:
return $default(_that.id,_that.status,_that.transcript,_that.duration,_that.recordingUrl,_that.metrics,_that.aiAnalysis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String transcript,  double duration,  String? recordingUrl,  MetricsDto metrics,  AIAnalysisDto? aiAnalysis)  $default,) {final _that = this;
switch (_that) {
case _InterviewAnalysisDto():
return $default(_that.id,_that.status,_that.transcript,_that.duration,_that.recordingUrl,_that.metrics,_that.aiAnalysis);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String transcript,  double duration,  String? recordingUrl,  MetricsDto metrics,  AIAnalysisDto? aiAnalysis)?  $default,) {final _that = this;
switch (_that) {
case _InterviewAnalysisDto() when $default != null:
return $default(_that.id,_that.status,_that.transcript,_that.duration,_that.recordingUrl,_that.metrics,_that.aiAnalysis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewAnalysisDto extends InterviewAnalysisDto {
  const _InterviewAnalysisDto({required this.id, required this.status, required this.transcript, required this.duration, this.recordingUrl, required this.metrics, this.aiAnalysis}): super._();
  factory _InterviewAnalysisDto.fromJson(Map<String, dynamic> json) => _$InterviewAnalysisDtoFromJson(json);

@override final  String id;
@override final  String status;
@override final  String transcript;
@override final  double duration;
@override final  String? recordingUrl;
@override final  MetricsDto metrics;
@override final  AIAnalysisDto? aiAnalysis;

/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewAnalysisDtoCopyWith<_InterviewAnalysisDto> get copyWith => __$InterviewAnalysisDtoCopyWithImpl<_InterviewAnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewAnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewAnalysisDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.transcript, transcript) || other.transcript == transcript)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,transcript,duration,recordingUrl,metrics,aiAnalysis);

@override
String toString() {
  return 'InterviewAnalysisDto(id: $id, status: $status, transcript: $transcript, duration: $duration, recordingUrl: $recordingUrl, metrics: $metrics, aiAnalysis: $aiAnalysis)';
}


}

/// @nodoc
abstract mixin class _$InterviewAnalysisDtoCopyWith<$Res> implements $InterviewAnalysisDtoCopyWith<$Res> {
  factory _$InterviewAnalysisDtoCopyWith(_InterviewAnalysisDto value, $Res Function(_InterviewAnalysisDto) _then) = __$InterviewAnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String transcript, double duration, String? recordingUrl, MetricsDto metrics, AIAnalysisDto? aiAnalysis
});


@override $MetricsDtoCopyWith<$Res> get metrics;@override $AIAnalysisDtoCopyWith<$Res>? get aiAnalysis;

}
/// @nodoc
class __$InterviewAnalysisDtoCopyWithImpl<$Res>
    implements _$InterviewAnalysisDtoCopyWith<$Res> {
  __$InterviewAnalysisDtoCopyWithImpl(this._self, this._then);

  final _InterviewAnalysisDto _self;
  final $Res Function(_InterviewAnalysisDto) _then;

/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? transcript = null,Object? duration = null,Object? recordingUrl = freezed,Object? metrics = null,Object? aiAnalysis = freezed,}) {
  return _then(_InterviewAnalysisDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transcript: null == transcript ? _self.transcript : transcript // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as MetricsDto,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as AIAnalysisDto?,
  ));
}

/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsDtoCopyWith<$Res> get metrics {
  
  return $MetricsDtoCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of InterviewAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AIAnalysisDtoCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $AIAnalysisDtoCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
}
}


/// @nodoc
mixin _$MetricsDto {

 int get averagePace; int get totalWords; int get fillerCount; int get pauseCount; List<PacePointDto> get paceTimeline;
/// Create a copy of MetricsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricsDtoCopyWith<MetricsDto> get copyWith => _$MetricsDtoCopyWithImpl<MetricsDto>(this as MetricsDto, _$identity);

  /// Serializes this MetricsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricsDto&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount)&&const DeepCollectionEquality().equals(other.paceTimeline, paceTimeline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount,const DeepCollectionEquality().hash(paceTimeline));

@override
String toString() {
  return 'MetricsDto(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount, paceTimeline: $paceTimeline)';
}


}

/// @nodoc
abstract mixin class $MetricsDtoCopyWith<$Res>  {
  factory $MetricsDtoCopyWith(MetricsDto value, $Res Function(MetricsDto) _then) = _$MetricsDtoCopyWithImpl;
@useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount, List<PacePointDto> paceTimeline
});




}
/// @nodoc
class _$MetricsDtoCopyWithImpl<$Res>
    implements $MetricsDtoCopyWith<$Res> {
  _$MetricsDtoCopyWithImpl(this._self, this._then);

  final MetricsDto _self;
  final $Res Function(MetricsDto) _then;

/// Create a copy of MetricsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,Object? paceTimeline = null,}) {
  return _then(_self.copyWith(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,paceTimeline: null == paceTimeline ? _self.paceTimeline : paceTimeline // ignore: cast_nullable_to_non_nullable
as List<PacePointDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricsDto].
extension MetricsDtoPatterns on MetricsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricsDto value)  $default,){
final _that = this;
switch (_that) {
case _MetricsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricsDto value)?  $default,){
final _that = this;
switch (_that) {
case _MetricsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount,  List<PacePointDto> paceTimeline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricsDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount,  List<PacePointDto> paceTimeline)  $default,) {final _that = this;
switch (_that) {
case _MetricsDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount,  List<PacePointDto> paceTimeline)?  $default,) {final _that = this;
switch (_that) {
case _MetricsDto() when $default != null:
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount,_that.paceTimeline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetricsDto extends MetricsDto {
  const _MetricsDto({required this.averagePace, required this.totalWords, required this.fillerCount, required this.pauseCount, required final  List<PacePointDto> paceTimeline}): _paceTimeline = paceTimeline,super._();
  factory _MetricsDto.fromJson(Map<String, dynamic> json) => _$MetricsDtoFromJson(json);

@override final  int averagePace;
@override final  int totalWords;
@override final  int fillerCount;
@override final  int pauseCount;
 final  List<PacePointDto> _paceTimeline;
@override List<PacePointDto> get paceTimeline {
  if (_paceTimeline is EqualUnmodifiableListView) return _paceTimeline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paceTimeline);
}


/// Create a copy of MetricsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricsDtoCopyWith<_MetricsDto> get copyWith => __$MetricsDtoCopyWithImpl<_MetricsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricsDto&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount)&&const DeepCollectionEquality().equals(other._paceTimeline, _paceTimeline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount,const DeepCollectionEquality().hash(_paceTimeline));

@override
String toString() {
  return 'MetricsDto(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount, paceTimeline: $paceTimeline)';
}


}

/// @nodoc
abstract mixin class _$MetricsDtoCopyWith<$Res> implements $MetricsDtoCopyWith<$Res> {
  factory _$MetricsDtoCopyWith(_MetricsDto value, $Res Function(_MetricsDto) _then) = __$MetricsDtoCopyWithImpl;
@override @useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount, List<PacePointDto> paceTimeline
});




}
/// @nodoc
class __$MetricsDtoCopyWithImpl<$Res>
    implements _$MetricsDtoCopyWith<$Res> {
  __$MetricsDtoCopyWithImpl(this._self, this._then);

  final _MetricsDto _self;
  final $Res Function(_MetricsDto) _then;

/// Create a copy of MetricsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,Object? paceTimeline = null,}) {
  return _then(_MetricsDto(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,paceTimeline: null == paceTimeline ? _self._paceTimeline : paceTimeline // ignore: cast_nullable_to_non_nullable
as List<PacePointDto>,
  ));
}


}


/// @nodoc
mixin _$PacePointDto {

 double get timestamp; int get wpm; double get segmentStart; double get segmentEnd;
/// Create a copy of PacePointDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PacePointDtoCopyWith<PacePointDto> get copyWith => _$PacePointDtoCopyWithImpl<PacePointDto>(this as PacePointDto, _$identity);

  /// Serializes this PacePointDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PacePointDto&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.wpm, wpm) || other.wpm == wpm)&&(identical(other.segmentStart, segmentStart) || other.segmentStart == segmentStart)&&(identical(other.segmentEnd, segmentEnd) || other.segmentEnd == segmentEnd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,wpm,segmentStart,segmentEnd);

@override
String toString() {
  return 'PacePointDto(timestamp: $timestamp, wpm: $wpm, segmentStart: $segmentStart, segmentEnd: $segmentEnd)';
}


}

/// @nodoc
abstract mixin class $PacePointDtoCopyWith<$Res>  {
  factory $PacePointDtoCopyWith(PacePointDto value, $Res Function(PacePointDto) _then) = _$PacePointDtoCopyWithImpl;
@useResult
$Res call({
 double timestamp, int wpm, double segmentStart, double segmentEnd
});




}
/// @nodoc
class _$PacePointDtoCopyWithImpl<$Res>
    implements $PacePointDtoCopyWith<$Res> {
  _$PacePointDtoCopyWithImpl(this._self, this._then);

  final PacePointDto _self;
  final $Res Function(PacePointDto) _then;

/// Create a copy of PacePointDto
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


/// Adds pattern-matching-related methods to [PacePointDto].
extension PacePointDtoPatterns on PacePointDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PacePointDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PacePointDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PacePointDto value)  $default,){
final _that = this;
switch (_that) {
case _PacePointDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PacePointDto value)?  $default,){
final _that = this;
switch (_that) {
case _PacePointDto() when $default != null:
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
case _PacePointDto() when $default != null:
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
case _PacePointDto():
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
case _PacePointDto() when $default != null:
return $default(_that.timestamp,_that.wpm,_that.segmentStart,_that.segmentEnd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PacePointDto extends PacePointDto {
  const _PacePointDto({required this.timestamp, required this.wpm, required this.segmentStart, required this.segmentEnd}): super._();
  factory _PacePointDto.fromJson(Map<String, dynamic> json) => _$PacePointDtoFromJson(json);

@override final  double timestamp;
@override final  int wpm;
@override final  double segmentStart;
@override final  double segmentEnd;

/// Create a copy of PacePointDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PacePointDtoCopyWith<_PacePointDto> get copyWith => __$PacePointDtoCopyWithImpl<_PacePointDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PacePointDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PacePointDto&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.wpm, wpm) || other.wpm == wpm)&&(identical(other.segmentStart, segmentStart) || other.segmentStart == segmentStart)&&(identical(other.segmentEnd, segmentEnd) || other.segmentEnd == segmentEnd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,wpm,segmentStart,segmentEnd);

@override
String toString() {
  return 'PacePointDto(timestamp: $timestamp, wpm: $wpm, segmentStart: $segmentStart, segmentEnd: $segmentEnd)';
}


}

/// @nodoc
abstract mixin class _$PacePointDtoCopyWith<$Res> implements $PacePointDtoCopyWith<$Res> {
  factory _$PacePointDtoCopyWith(_PacePointDto value, $Res Function(_PacePointDto) _then) = __$PacePointDtoCopyWithImpl;
@override @useResult
$Res call({
 double timestamp, int wpm, double segmentStart, double segmentEnd
});




}
/// @nodoc
class __$PacePointDtoCopyWithImpl<$Res>
    implements _$PacePointDtoCopyWith<$Res> {
  __$PacePointDtoCopyWithImpl(this._self, this._then);

  final _PacePointDto _self;
  final $Res Function(_PacePointDto) _then;

/// Create a copy of PacePointDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? wpm = null,Object? segmentStart = null,Object? segmentEnd = null,}) {
  return _then(_PacePointDto(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,wpm: null == wpm ? _self.wpm : wpm // ignore: cast_nullable_to_non_nullable
as int,segmentStart: null == segmentStart ? _self.segmentStart : segmentStart // ignore: cast_nullable_to_non_nullable
as double,segmentEnd: null == segmentEnd ? _self.segmentEnd : segmentEnd // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AIAnalysisDto {

 double get overallScore; String get summary; String get paceAnalysis; String get fillerAnalysis; double get confidenceScore; List<ImprovementDto> get improvements; List<String> get highlights;
/// Create a copy of AIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIAnalysisDtoCopyWith<AIAnalysisDto> get copyWith => _$AIAnalysisDtoCopyWithImpl<AIAnalysisDto>(this as AIAnalysisDto, _$identity);

  /// Serializes this AIAnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIAnalysisDto&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.paceAnalysis, paceAnalysis) || other.paceAnalysis == paceAnalysis)&&(identical(other.fillerAnalysis, fillerAnalysis) || other.fillerAnalysis == fillerAnalysis)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore)&&const DeepCollectionEquality().equals(other.improvements, improvements)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,paceAnalysis,fillerAnalysis,confidenceScore,const DeepCollectionEquality().hash(improvements),const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'AIAnalysisDto(overallScore: $overallScore, summary: $summary, paceAnalysis: $paceAnalysis, fillerAnalysis: $fillerAnalysis, confidenceScore: $confidenceScore, improvements: $improvements, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $AIAnalysisDtoCopyWith<$Res>  {
  factory $AIAnalysisDtoCopyWith(AIAnalysisDto value, $Res Function(AIAnalysisDto) _then) = _$AIAnalysisDtoCopyWithImpl;
@useResult
$Res call({
 double overallScore, String summary, String paceAnalysis, String fillerAnalysis, double confidenceScore, List<ImprovementDto> improvements, List<String> highlights
});




}
/// @nodoc
class _$AIAnalysisDtoCopyWithImpl<$Res>
    implements $AIAnalysisDtoCopyWith<$Res> {
  _$AIAnalysisDtoCopyWithImpl(this._self, this._then);

  final AIAnalysisDto _self;
  final $Res Function(AIAnalysisDto) _then;

/// Create a copy of AIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overallScore = null,Object? summary = null,Object? paceAnalysis = null,Object? fillerAnalysis = null,Object? confidenceScore = null,Object? improvements = null,Object? highlights = null,}) {
  return _then(_self.copyWith(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,paceAnalysis: null == paceAnalysis ? _self.paceAnalysis : paceAnalysis // ignore: cast_nullable_to_non_nullable
as String,fillerAnalysis: null == fillerAnalysis ? _self.fillerAnalysis : fillerAnalysis // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,improvements: null == improvements ? _self.improvements : improvements // ignore: cast_nullable_to_non_nullable
as List<ImprovementDto>,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AIAnalysisDto].
extension AIAnalysisDtoPatterns on AIAnalysisDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIAnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIAnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIAnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _AIAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double overallScore,  String summary,  String paceAnalysis,  String fillerAnalysis,  double confidenceScore,  List<ImprovementDto> improvements,  List<String> highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double overallScore,  String summary,  String paceAnalysis,  String fillerAnalysis,  double confidenceScore,  List<ImprovementDto> improvements,  List<String> highlights)  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double overallScore,  String summary,  String paceAnalysis,  String fillerAnalysis,  double confidenceScore,  List<ImprovementDto> improvements,  List<String> highlights)?  $default,) {final _that = this;
switch (_that) {
case _AIAnalysisDto() when $default != null:
return $default(_that.overallScore,_that.summary,_that.paceAnalysis,_that.fillerAnalysis,_that.confidenceScore,_that.improvements,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AIAnalysisDto extends AIAnalysisDto {
  const _AIAnalysisDto({required this.overallScore, required this.summary, required this.paceAnalysis, required this.fillerAnalysis, required this.confidenceScore, required final  List<ImprovementDto> improvements, required final  List<String> highlights}): _improvements = improvements,_highlights = highlights,super._();
  factory _AIAnalysisDto.fromJson(Map<String, dynamic> json) => _$AIAnalysisDtoFromJson(json);

@override final  double overallScore;
@override final  String summary;
@override final  String paceAnalysis;
@override final  String fillerAnalysis;
@override final  double confidenceScore;
 final  List<ImprovementDto> _improvements;
@override List<ImprovementDto> get improvements {
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


/// Create a copy of AIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIAnalysisDtoCopyWith<_AIAnalysisDto> get copyWith => __$AIAnalysisDtoCopyWithImpl<_AIAnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AIAnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIAnalysisDto&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.paceAnalysis, paceAnalysis) || other.paceAnalysis == paceAnalysis)&&(identical(other.fillerAnalysis, fillerAnalysis) || other.fillerAnalysis == fillerAnalysis)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore)&&const DeepCollectionEquality().equals(other._improvements, _improvements)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,paceAnalysis,fillerAnalysis,confidenceScore,const DeepCollectionEquality().hash(_improvements),const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'AIAnalysisDto(overallScore: $overallScore, summary: $summary, paceAnalysis: $paceAnalysis, fillerAnalysis: $fillerAnalysis, confidenceScore: $confidenceScore, improvements: $improvements, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$AIAnalysisDtoCopyWith<$Res> implements $AIAnalysisDtoCopyWith<$Res> {
  factory _$AIAnalysisDtoCopyWith(_AIAnalysisDto value, $Res Function(_AIAnalysisDto) _then) = __$AIAnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 double overallScore, String summary, String paceAnalysis, String fillerAnalysis, double confidenceScore, List<ImprovementDto> improvements, List<String> highlights
});




}
/// @nodoc
class __$AIAnalysisDtoCopyWithImpl<$Res>
    implements _$AIAnalysisDtoCopyWith<$Res> {
  __$AIAnalysisDtoCopyWithImpl(this._self, this._then);

  final _AIAnalysisDto _self;
  final $Res Function(_AIAnalysisDto) _then;

/// Create a copy of AIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overallScore = null,Object? summary = null,Object? paceAnalysis = null,Object? fillerAnalysis = null,Object? confidenceScore = null,Object? improvements = null,Object? highlights = null,}) {
  return _then(_AIAnalysisDto(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,paceAnalysis: null == paceAnalysis ? _self.paceAnalysis : paceAnalysis // ignore: cast_nullable_to_non_nullable
as String,fillerAnalysis: null == fillerAnalysis ? _self.fillerAnalysis : fillerAnalysis // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,improvements: null == improvements ? _self._improvements : improvements // ignore: cast_nullable_to_non_nullable
as List<ImprovementDto>,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ImprovementDto {

 String get title; double get timestamp; String get description;
/// Create a copy of ImprovementDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImprovementDtoCopyWith<ImprovementDto> get copyWith => _$ImprovementDtoCopyWithImpl<ImprovementDto>(this as ImprovementDto, _$identity);

  /// Serializes this ImprovementDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImprovementDto&&(identical(other.title, title) || other.title == title)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,timestamp,description);

@override
String toString() {
  return 'ImprovementDto(title: $title, timestamp: $timestamp, description: $description)';
}


}

/// @nodoc
abstract mixin class $ImprovementDtoCopyWith<$Res>  {
  factory $ImprovementDtoCopyWith(ImprovementDto value, $Res Function(ImprovementDto) _then) = _$ImprovementDtoCopyWithImpl;
@useResult
$Res call({
 String title, double timestamp, String description
});




}
/// @nodoc
class _$ImprovementDtoCopyWithImpl<$Res>
    implements $ImprovementDtoCopyWith<$Res> {
  _$ImprovementDtoCopyWithImpl(this._self, this._then);

  final ImprovementDto _self;
  final $Res Function(ImprovementDto) _then;

/// Create a copy of ImprovementDto
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


/// Adds pattern-matching-related methods to [ImprovementDto].
extension ImprovementDtoPatterns on ImprovementDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImprovementDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImprovementDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImprovementDto value)  $default,){
final _that = this;
switch (_that) {
case _ImprovementDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImprovementDto value)?  $default,){
final _that = this;
switch (_that) {
case _ImprovementDto() when $default != null:
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
case _ImprovementDto() when $default != null:
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
case _ImprovementDto():
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
case _ImprovementDto() when $default != null:
return $default(_that.title,_that.timestamp,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImprovementDto extends ImprovementDto {
  const _ImprovementDto({required this.title, required this.timestamp, required this.description}): super._();
  factory _ImprovementDto.fromJson(Map<String, dynamic> json) => _$ImprovementDtoFromJson(json);

@override final  String title;
@override final  double timestamp;
@override final  String description;

/// Create a copy of ImprovementDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImprovementDtoCopyWith<_ImprovementDto> get copyWith => __$ImprovementDtoCopyWithImpl<_ImprovementDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImprovementDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImprovementDto&&(identical(other.title, title) || other.title == title)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,timestamp,description);

@override
String toString() {
  return 'ImprovementDto(title: $title, timestamp: $timestamp, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ImprovementDtoCopyWith<$Res> implements $ImprovementDtoCopyWith<$Res> {
  factory _$ImprovementDtoCopyWith(_ImprovementDto value, $Res Function(_ImprovementDto) _then) = __$ImprovementDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, double timestamp, String description
});




}
/// @nodoc
class __$ImprovementDtoCopyWithImpl<$Res>
    implements _$ImprovementDtoCopyWith<$Res> {
  __$ImprovementDtoCopyWithImpl(this._self, this._then);

  final _ImprovementDto _self;
  final $Res Function(_ImprovementDto) _then;

/// Create a copy of ImprovementDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? timestamp = null,Object? description = null,}) {
  return _then(_ImprovementDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
