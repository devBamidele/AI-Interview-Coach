// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcription_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TranscriptionState {

 bool get isConnected; bool get isTranscribing; String get fullTranscript; List<TranscriptEvent> get transcriptEvents; AnalysisEvent? get latestAnalysis; String? get error;
/// Create a copy of TranscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranscriptionStateCopyWith<TranscriptionState> get copyWith => _$TranscriptionStateCopyWithImpl<TranscriptionState>(this as TranscriptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranscriptionState&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected)&&(identical(other.isTranscribing, isTranscribing) || other.isTranscribing == isTranscribing)&&(identical(other.fullTranscript, fullTranscript) || other.fullTranscript == fullTranscript)&&const DeepCollectionEquality().equals(other.transcriptEvents, transcriptEvents)&&(identical(other.latestAnalysis, latestAnalysis) || other.latestAnalysis == latestAnalysis)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected,isTranscribing,fullTranscript,const DeepCollectionEquality().hash(transcriptEvents),latestAnalysis,error);

@override
String toString() {
  return 'TranscriptionState(isConnected: $isConnected, isTranscribing: $isTranscribing, fullTranscript: $fullTranscript, transcriptEvents: $transcriptEvents, latestAnalysis: $latestAnalysis, error: $error)';
}


}

/// @nodoc
abstract mixin class $TranscriptionStateCopyWith<$Res>  {
  factory $TranscriptionStateCopyWith(TranscriptionState value, $Res Function(TranscriptionState) _then) = _$TranscriptionStateCopyWithImpl;
@useResult
$Res call({
 bool isConnected, bool isTranscribing, String fullTranscript, List<TranscriptEvent> transcriptEvents, AnalysisEvent? latestAnalysis, String? error
});


$AnalysisEventCopyWith<$Res>? get latestAnalysis;

}
/// @nodoc
class _$TranscriptionStateCopyWithImpl<$Res>
    implements $TranscriptionStateCopyWith<$Res> {
  _$TranscriptionStateCopyWithImpl(this._self, this._then);

  final TranscriptionState _self;
  final $Res Function(TranscriptionState) _then;

/// Create a copy of TranscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConnected = null,Object? isTranscribing = null,Object? fullTranscript = null,Object? transcriptEvents = null,Object? latestAnalysis = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,isTranscribing: null == isTranscribing ? _self.isTranscribing : isTranscribing // ignore: cast_nullable_to_non_nullable
as bool,fullTranscript: null == fullTranscript ? _self.fullTranscript : fullTranscript // ignore: cast_nullable_to_non_nullable
as String,transcriptEvents: null == transcriptEvents ? _self.transcriptEvents : transcriptEvents // ignore: cast_nullable_to_non_nullable
as List<TranscriptEvent>,latestAnalysis: freezed == latestAnalysis ? _self.latestAnalysis : latestAnalysis // ignore: cast_nullable_to_non_nullable
as AnalysisEvent?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TranscriptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisEventCopyWith<$Res>? get latestAnalysis {
    if (_self.latestAnalysis == null) {
    return null;
  }

  return $AnalysisEventCopyWith<$Res>(_self.latestAnalysis!, (value) {
    return _then(_self.copyWith(latestAnalysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [TranscriptionState].
extension TranscriptionStatePatterns on TranscriptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranscriptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranscriptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranscriptionState value)  $default,){
final _that = this;
switch (_that) {
case _TranscriptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranscriptionState value)?  $default,){
final _that = this;
switch (_that) {
case _TranscriptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isConnected,  bool isTranscribing,  String fullTranscript,  List<TranscriptEvent> transcriptEvents,  AnalysisEvent? latestAnalysis,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranscriptionState() when $default != null:
return $default(_that.isConnected,_that.isTranscribing,_that.fullTranscript,_that.transcriptEvents,_that.latestAnalysis,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isConnected,  bool isTranscribing,  String fullTranscript,  List<TranscriptEvent> transcriptEvents,  AnalysisEvent? latestAnalysis,  String? error)  $default,) {final _that = this;
switch (_that) {
case _TranscriptionState():
return $default(_that.isConnected,_that.isTranscribing,_that.fullTranscript,_that.transcriptEvents,_that.latestAnalysis,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isConnected,  bool isTranscribing,  String fullTranscript,  List<TranscriptEvent> transcriptEvents,  AnalysisEvent? latestAnalysis,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _TranscriptionState() when $default != null:
return $default(_that.isConnected,_that.isTranscribing,_that.fullTranscript,_that.transcriptEvents,_that.latestAnalysis,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _TranscriptionState implements TranscriptionState {
  const _TranscriptionState({this.isConnected = false, this.isTranscribing = false, this.fullTranscript = '', final  List<TranscriptEvent> transcriptEvents = const [], this.latestAnalysis, this.error}): _transcriptEvents = transcriptEvents;
  

@override@JsonKey() final  bool isConnected;
@override@JsonKey() final  bool isTranscribing;
@override@JsonKey() final  String fullTranscript;
 final  List<TranscriptEvent> _transcriptEvents;
@override@JsonKey() List<TranscriptEvent> get transcriptEvents {
  if (_transcriptEvents is EqualUnmodifiableListView) return _transcriptEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transcriptEvents);
}

@override final  AnalysisEvent? latestAnalysis;
@override final  String? error;

/// Create a copy of TranscriptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranscriptionStateCopyWith<_TranscriptionState> get copyWith => __$TranscriptionStateCopyWithImpl<_TranscriptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranscriptionState&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected)&&(identical(other.isTranscribing, isTranscribing) || other.isTranscribing == isTranscribing)&&(identical(other.fullTranscript, fullTranscript) || other.fullTranscript == fullTranscript)&&const DeepCollectionEquality().equals(other._transcriptEvents, _transcriptEvents)&&(identical(other.latestAnalysis, latestAnalysis) || other.latestAnalysis == latestAnalysis)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected,isTranscribing,fullTranscript,const DeepCollectionEquality().hash(_transcriptEvents),latestAnalysis,error);

@override
String toString() {
  return 'TranscriptionState(isConnected: $isConnected, isTranscribing: $isTranscribing, fullTranscript: $fullTranscript, transcriptEvents: $transcriptEvents, latestAnalysis: $latestAnalysis, error: $error)';
}


}

/// @nodoc
abstract mixin class _$TranscriptionStateCopyWith<$Res> implements $TranscriptionStateCopyWith<$Res> {
  factory _$TranscriptionStateCopyWith(_TranscriptionState value, $Res Function(_TranscriptionState) _then) = __$TranscriptionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isConnected, bool isTranscribing, String fullTranscript, List<TranscriptEvent> transcriptEvents, AnalysisEvent? latestAnalysis, String? error
});


@override $AnalysisEventCopyWith<$Res>? get latestAnalysis;

}
/// @nodoc
class __$TranscriptionStateCopyWithImpl<$Res>
    implements _$TranscriptionStateCopyWith<$Res> {
  __$TranscriptionStateCopyWithImpl(this._self, this._then);

  final _TranscriptionState _self;
  final $Res Function(_TranscriptionState) _then;

/// Create a copy of TranscriptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConnected = null,Object? isTranscribing = null,Object? fullTranscript = null,Object? transcriptEvents = null,Object? latestAnalysis = freezed,Object? error = freezed,}) {
  return _then(_TranscriptionState(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,isTranscribing: null == isTranscribing ? _self.isTranscribing : isTranscribing // ignore: cast_nullable_to_non_nullable
as bool,fullTranscript: null == fullTranscript ? _self.fullTranscript : fullTranscript // ignore: cast_nullable_to_non_nullable
as String,transcriptEvents: null == transcriptEvents ? _self._transcriptEvents : transcriptEvents // ignore: cast_nullable_to_non_nullable
as List<TranscriptEvent>,latestAnalysis: freezed == latestAnalysis ? _self.latestAnalysis : latestAnalysis // ignore: cast_nullable_to_non_nullable
as AnalysisEvent?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TranscriptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisEventCopyWith<$Res>? get latestAnalysis {
    if (_self.latestAnalysis == null) {
    return null;
  }

  return $AnalysisEventCopyWith<$Res>(_self.latestAnalysis!, (value) {
    return _then(_self.copyWith(latestAnalysis: value));
  });
}
}

// dart format on
