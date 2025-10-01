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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Disconnected value)?  disconnected,TResult Function( Connecting value)?  connecting,TResult Function( Connected value)?  connected,TResult Function( Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected(_that);case Connecting() when connecting != null:
return connecting(_that);case Connected() when connected != null:
return connected(_that);case Failed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Disconnected value)  disconnected,required TResult Function( Connecting value)  connecting,required TResult Function( Connected value)  connected,required TResult Function( Failed value)  failed,}){
final _that = this;
switch (_that) {
case Disconnected():
return disconnected(_that);case Connecting():
return connecting(_that);case Connected():
return connected(_that);case Failed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Disconnected value)?  disconnected,TResult? Function( Connecting value)?  connecting,TResult? Function( Connected value)?  connected,TResult? Function( Failed value)?  failed,}){
final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected(_that);case Connecting() when connecting != null:
return connecting(_that);case Connected() when connected != null:
return connected(_that);case Failed() when failed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  disconnected,TResult Function( String status)?  connecting,TResult Function( LocalVideoTrack? localVideoTrack)?  connected,TResult Function( String errorMessage)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected();case Connecting() when connecting != null:
return connecting(_that.status);case Connected() when connected != null:
return connected(_that.localVideoTrack);case Failed() when failed != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  disconnected,required TResult Function( String status)  connecting,required TResult Function( LocalVideoTrack? localVideoTrack)  connected,required TResult Function( String errorMessage)  failed,}) {final _that = this;
switch (_that) {
case Disconnected():
return disconnected();case Connecting():
return connecting(_that.status);case Connected():
return connected(_that.localVideoTrack);case Failed():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  disconnected,TResult? Function( String status)?  connecting,TResult? Function( LocalVideoTrack? localVideoTrack)?  connected,TResult? Function( String errorMessage)?  failed,}) {final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected();case Connecting() when connecting != null:
return connecting(_that.status);case Connected() when connected != null:
return connected(_that.localVideoTrack);case Failed() when failed != null:
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
  const Connected({this.localVideoTrack});
  

 final  LocalVideoTrack? localVideoTrack;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedCopyWith<Connected> get copyWith => _$ConnectedCopyWithImpl<Connected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connected&&(identical(other.localVideoTrack, localVideoTrack) || other.localVideoTrack == localVideoTrack));
}


@override
int get hashCode => Object.hash(runtimeType,localVideoTrack);

@override
String toString() {
  return 'InterviewState.connected(localVideoTrack: $localVideoTrack)';
}


}

/// @nodoc
abstract mixin class $ConnectedCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) _then) = _$ConnectedCopyWithImpl;
@useResult
$Res call({
 LocalVideoTrack? localVideoTrack
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
@pragma('vm:prefer-inline') $Res call({Object? localVideoTrack = freezed,}) {
  return _then(Connected(
localVideoTrack: freezed == localVideoTrack ? _self.localVideoTrack : localVideoTrack // ignore: cast_nullable_to_non_nullable
as LocalVideoTrack?,
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
