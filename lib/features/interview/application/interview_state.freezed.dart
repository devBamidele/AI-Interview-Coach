// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterviewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterviewState()';
}


}

/// @nodoc
class $InterviewStateCopyWith<$Res>  {
$InterviewStateCopyWith(InterviewState _, $Res Function(InterviewState) __);
}


/// Adds pattern-matching-related methods to [InterviewState].
extension InterviewStatePatterns on InterviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Disconnected value)?  disconnected,TResult Function( Connecting value)?  connecting,TResult Function( Connected value)?  connected,TResult Function( Completing value)?  completing,TResult Function( Analyzing value)?  analyzing,TResult Function( AnalysisComplete value)?  analysisComplete,TResult Function( AnalysisFailed value)?  analysisFailed,TResult Function( Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected(_that);case Connecting() when connecting != null:
return connecting(_that);case Connected() when connected != null:
return connected(_that);case Completing() when completing != null:
return completing(_that);case Analyzing() when analyzing != null:
return analyzing(_that);case AnalysisComplete() when analysisComplete != null:
return analysisComplete(_that);case AnalysisFailed() when analysisFailed != null:
return analysisFailed(_that);case Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Disconnected value)  disconnected,required TResult Function( Connecting value)  connecting,required TResult Function( Connected value)  connected,required TResult Function( Completing value)  completing,required TResult Function( Analyzing value)  analyzing,required TResult Function( AnalysisComplete value)  analysisComplete,required TResult Function( AnalysisFailed value)  analysisFailed,required TResult Function( Failed value)  failed,}){
final _that = this;
switch (_that) {
case Disconnected():
return disconnected(_that);case Connecting():
return connecting(_that);case Connected():
return connected(_that);case Completing():
return completing(_that);case Analyzing():
return analyzing(_that);case AnalysisComplete():
return analysisComplete(_that);case AnalysisFailed():
return analysisFailed(_that);case Failed():
return failed(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Disconnected value)?  disconnected,TResult? Function( Connecting value)?  connecting,TResult? Function( Connected value)?  connected,TResult? Function( Completing value)?  completing,TResult? Function( Analyzing value)?  analyzing,TResult? Function( AnalysisComplete value)?  analysisComplete,TResult? Function( AnalysisFailed value)?  analysisFailed,TResult? Function( Failed value)?  failed,}){
final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected(_that);case Connecting() when connecting != null:
return connecting(_that);case Connected() when connected != null:
return connected(_that);case Completing() when completing != null:
return completing(_that);case Analyzing() when analyzing != null:
return analyzing(_that);case AnalysisComplete() when analysisComplete != null:
return analysisComplete(_that);case AnalysisFailed() when analysisFailed != null:
return analysisFailed(_that);case Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  disconnected,TResult Function( String status)?  connecting,TResult Function( LocalVideoTrack? localVideoTrack,  String? participantIdentity,  String? roomMetadata)?  connected,TResult Function( String status)?  completing,TResult Function( String interviewId)?  analyzing,TResult Function( InterviewAnalysis analysis,  String interviewId)?  analysisComplete,TResult Function( String errorMessage)?  analysisFailed,TResult Function( String errorMessage)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected();case Connecting() when connecting != null:
return connecting(_that.status);case Connected() when connected != null:
return connected(_that.localVideoTrack,_that.participantIdentity,_that.roomMetadata);case Completing() when completing != null:
return completing(_that.status);case Analyzing() when analyzing != null:
return analyzing(_that.interviewId);case AnalysisComplete() when analysisComplete != null:
return analysisComplete(_that.analysis,_that.interviewId);case AnalysisFailed() when analysisFailed != null:
return analysisFailed(_that.errorMessage);case Failed() when failed != null:
return failed(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  disconnected,required TResult Function( String status)  connecting,required TResult Function( LocalVideoTrack? localVideoTrack,  String? participantIdentity,  String? roomMetadata)  connected,required TResult Function( String status)  completing,required TResult Function( String interviewId)  analyzing,required TResult Function( InterviewAnalysis analysis,  String interviewId)  analysisComplete,required TResult Function( String errorMessage)  analysisFailed,required TResult Function( String errorMessage)  failed,}) {final _that = this;
switch (_that) {
case Disconnected():
return disconnected();case Connecting():
return connecting(_that.status);case Connected():
return connected(_that.localVideoTrack,_that.participantIdentity,_that.roomMetadata);case Completing():
return completing(_that.status);case Analyzing():
return analyzing(_that.interviewId);case AnalysisComplete():
return analysisComplete(_that.analysis,_that.interviewId);case AnalysisFailed():
return analysisFailed(_that.errorMessage);case Failed():
return failed(_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  disconnected,TResult? Function( String status)?  connecting,TResult? Function( LocalVideoTrack? localVideoTrack,  String? participantIdentity,  String? roomMetadata)?  connected,TResult? Function( String status)?  completing,TResult? Function( String interviewId)?  analyzing,TResult? Function( InterviewAnalysis analysis,  String interviewId)?  analysisComplete,TResult? Function( String errorMessage)?  analysisFailed,TResult? Function( String errorMessage)?  failed,}) {final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected();case Connecting() when connecting != null:
return connecting(_that.status);case Connected() when connected != null:
return connected(_that.localVideoTrack,_that.participantIdentity,_that.roomMetadata);case Completing() when completing != null:
return completing(_that.status);case Analyzing() when analyzing != null:
return analyzing(_that.interviewId);case AnalysisComplete() when analysisComplete != null:
return analysisComplete(_that.analysis,_that.interviewId);case AnalysisFailed() when analysisFailed != null:
return analysisFailed(_that.errorMessage);case Failed() when failed != null:
return failed(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class Disconnected implements InterviewState {
  const Disconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Disconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InterviewState.disconnected()';
}


}




/// @nodoc


class Connecting implements InterviewState {
  const Connecting(this.status);
  

 final  String status;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectingCopyWith<Connecting> get copyWith => _$ConnectingCopyWithImpl<Connecting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connecting&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'InterviewState.connecting(status: $status)';
}


}

/// @nodoc
abstract mixin class $ConnectingCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $ConnectingCopyWith(Connecting value, $Res Function(Connecting) _then) = _$ConnectingCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$ConnectingCopyWithImpl<$Res>
    implements $ConnectingCopyWith<$Res> {
  _$ConnectingCopyWithImpl(this._self, this._then);

  final Connecting _self;
  final $Res Function(Connecting) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(Connecting(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Connected implements InterviewState {
  const Connected({this.localVideoTrack, this.participantIdentity, this.roomMetadata});
  

 final  LocalVideoTrack? localVideoTrack;
 final  String? participantIdentity;
 final  String? roomMetadata;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedCopyWith<Connected> get copyWith => _$ConnectedCopyWithImpl<Connected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connected&&(identical(other.localVideoTrack, localVideoTrack) || other.localVideoTrack == localVideoTrack)&&(identical(other.participantIdentity, participantIdentity) || other.participantIdentity == participantIdentity)&&(identical(other.roomMetadata, roomMetadata) || other.roomMetadata == roomMetadata));
}


@override
int get hashCode => Object.hash(runtimeType,localVideoTrack,participantIdentity,roomMetadata);

@override
String toString() {
  return 'InterviewState.connected(localVideoTrack: $localVideoTrack, participantIdentity: $participantIdentity, roomMetadata: $roomMetadata)';
}


}

/// @nodoc
abstract mixin class $ConnectedCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) _then) = _$ConnectedCopyWithImpl;
@useResult
$Res call({
 LocalVideoTrack? localVideoTrack, String? participantIdentity, String? roomMetadata
});




}
/// @nodoc
class _$ConnectedCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(this._self, this._then);

  final Connected _self;
  final $Res Function(Connected) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? localVideoTrack = freezed,Object? participantIdentity = freezed,Object? roomMetadata = freezed,}) {
  return _then(Connected(
localVideoTrack: freezed == localVideoTrack ? _self.localVideoTrack : localVideoTrack // ignore: cast_nullable_to_non_nullable
as LocalVideoTrack?,participantIdentity: freezed == participantIdentity ? _self.participantIdentity : participantIdentity // ignore: cast_nullable_to_non_nullable
as String?,roomMetadata: freezed == roomMetadata ? _self.roomMetadata : roomMetadata // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class Completing implements InterviewState {
  const Completing(this.status);
  

 final  String status;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletingCopyWith<Completing> get copyWith => _$CompletingCopyWithImpl<Completing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Completing&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'InterviewState.completing(status: $status)';
}


}

/// @nodoc
abstract mixin class $CompletingCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $CompletingCopyWith(Completing value, $Res Function(Completing) _then) = _$CompletingCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$CompletingCopyWithImpl<$Res>
    implements $CompletingCopyWith<$Res> {
  _$CompletingCopyWithImpl(this._self, this._then);

  final Completing _self;
  final $Res Function(Completing) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(Completing(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Analyzing implements InterviewState {
  const Analyzing(this.interviewId);
  

 final  String interviewId;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzingCopyWith<Analyzing> get copyWith => _$AnalyzingCopyWithImpl<Analyzing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Analyzing&&(identical(other.interviewId, interviewId) || other.interviewId == interviewId));
}


@override
int get hashCode => Object.hash(runtimeType,interviewId);

@override
String toString() {
  return 'InterviewState.analyzing(interviewId: $interviewId)';
}


}

/// @nodoc
abstract mixin class $AnalyzingCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $AnalyzingCopyWith(Analyzing value, $Res Function(Analyzing) _then) = _$AnalyzingCopyWithImpl;
@useResult
$Res call({
 String interviewId
});




}
/// @nodoc
class _$AnalyzingCopyWithImpl<$Res>
    implements $AnalyzingCopyWith<$Res> {
  _$AnalyzingCopyWithImpl(this._self, this._then);

  final Analyzing _self;
  final $Res Function(Analyzing) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? interviewId = null,}) {
  return _then(Analyzing(
null == interviewId ? _self.interviewId : interviewId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AnalysisComplete implements InterviewState {
  const AnalysisComplete(this.analysis, this.interviewId);
  

 final  InterviewAnalysis analysis;
 final  String interviewId;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisCompleteCopyWith<AnalysisComplete> get copyWith => _$AnalysisCompleteCopyWithImpl<AnalysisComplete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisComplete&&(identical(other.analysis, analysis) || other.analysis == analysis)&&(identical(other.interviewId, interviewId) || other.interviewId == interviewId));
}


@override
int get hashCode => Object.hash(runtimeType,analysis,interviewId);

@override
String toString() {
  return 'InterviewState.analysisComplete(analysis: $analysis, interviewId: $interviewId)';
}


}

/// @nodoc
abstract mixin class $AnalysisCompleteCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $AnalysisCompleteCopyWith(AnalysisComplete value, $Res Function(AnalysisComplete) _then) = _$AnalysisCompleteCopyWithImpl;
@useResult
$Res call({
 InterviewAnalysis analysis, String interviewId
});


$InterviewAnalysisCopyWith<$Res> get analysis;

}
/// @nodoc
class _$AnalysisCompleteCopyWithImpl<$Res>
    implements $AnalysisCompleteCopyWith<$Res> {
  _$AnalysisCompleteCopyWithImpl(this._self, this._then);

  final AnalysisComplete _self;
  final $Res Function(AnalysisComplete) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? analysis = null,Object? interviewId = null,}) {
  return _then(AnalysisComplete(
null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as InterviewAnalysis,null == interviewId ? _self.interviewId : interviewId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterviewAnalysisCopyWith<$Res> get analysis {
  
  return $InterviewAnalysisCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}

/// @nodoc


class AnalysisFailed implements InterviewState {
  const AnalysisFailed(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisFailedCopyWith<AnalysisFailed> get copyWith => _$AnalysisFailedCopyWithImpl<AnalysisFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisFailed&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'InterviewState.analysisFailed(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AnalysisFailedCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $AnalysisFailedCopyWith(AnalysisFailed value, $Res Function(AnalysisFailed) _then) = _$AnalysisFailedCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$AnalysisFailedCopyWithImpl<$Res>
    implements $AnalysisFailedCopyWith<$Res> {
  _$AnalysisFailedCopyWithImpl(this._self, this._then);

  final AnalysisFailed _self;
  final $Res Function(AnalysisFailed) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(AnalysisFailed(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Failed implements InterviewState {
  const Failed(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailedCopyWith<Failed> get copyWith => _$FailedCopyWithImpl<Failed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failed&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'InterviewState.failed(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FailedCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) _then) = _$FailedCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$FailedCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(this._self, this._then);

  final Failed _self;
  final $Res Function(Failed) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(Failed(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
