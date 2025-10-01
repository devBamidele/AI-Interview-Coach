// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_connection_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomConnectionParams {

 String get roomName; String get participantName;
/// Create a copy of RoomConnectionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomConnectionParamsCopyWith<RoomConnectionParams> get copyWith => _$RoomConnectionParamsCopyWithImpl<RoomConnectionParams>(this as RoomConnectionParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomConnectionParams&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.participantName, participantName) || other.participantName == participantName));
}


@override
int get hashCode => Object.hash(runtimeType,roomName,participantName);

@override
String toString() {
  return 'RoomConnectionParams(roomName: $roomName, participantName: $participantName)';
}


}

/// @nodoc
abstract mixin class $RoomConnectionParamsCopyWith<$Res>  {
  factory $RoomConnectionParamsCopyWith(RoomConnectionParams value, $Res Function(RoomConnectionParams) _then) = _$RoomConnectionParamsCopyWithImpl;
@useResult
$Res call({
 String roomName, String participantName
});




}
/// @nodoc
class _$RoomConnectionParamsCopyWithImpl<$Res>
    implements $RoomConnectionParamsCopyWith<$Res> {
  _$RoomConnectionParamsCopyWithImpl(this._self, this._then);

  final RoomConnectionParams _self;
  final $Res Function(RoomConnectionParams) _then;

/// Create a copy of RoomConnectionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomName = null,Object? participantName = null,}) {
  return _then(_self.copyWith(
roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomConnectionParams].
extension RoomConnectionParamsPatterns on RoomConnectionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomConnectionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomConnectionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomConnectionParams value)  $default,){
final _that = this;
switch (_that) {
case _RoomConnectionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomConnectionParams value)?  $default,){
final _that = this;
switch (_that) {
case _RoomConnectionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomName,  String participantName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomConnectionParams() when $default != null:
return $default(_that.roomName,_that.participantName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomName,  String participantName)  $default,) {final _that = this;
switch (_that) {
case _RoomConnectionParams():
return $default(_that.roomName,_that.participantName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomName,  String participantName)?  $default,) {final _that = this;
switch (_that) {
case _RoomConnectionParams() when $default != null:
return $default(_that.roomName,_that.participantName);case _:
  return null;

}
}

}

/// @nodoc


class _RoomConnectionParams extends RoomConnectionParams {
  const _RoomConnectionParams({required this.roomName, required this.participantName}): super._();
  

@override final  String roomName;
@override final  String participantName;

/// Create a copy of RoomConnectionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomConnectionParamsCopyWith<_RoomConnectionParams> get copyWith => __$RoomConnectionParamsCopyWithImpl<_RoomConnectionParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomConnectionParams&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.participantName, participantName) || other.participantName == participantName));
}


@override
int get hashCode => Object.hash(runtimeType,roomName,participantName);

@override
String toString() {
  return 'RoomConnectionParams(roomName: $roomName, participantName: $participantName)';
}


}

/// @nodoc
abstract mixin class _$RoomConnectionParamsCopyWith<$Res> implements $RoomConnectionParamsCopyWith<$Res> {
  factory _$RoomConnectionParamsCopyWith(_RoomConnectionParams value, $Res Function(_RoomConnectionParams) _then) = __$RoomConnectionParamsCopyWithImpl;
@override @useResult
$Res call({
 String roomName, String participantName
});




}
/// @nodoc
class __$RoomConnectionParamsCopyWithImpl<$Res>
    implements _$RoomConnectionParamsCopyWith<$Res> {
  __$RoomConnectionParamsCopyWithImpl(this._self, this._then);

  final _RoomConnectionParams _self;
  final $Res Function(_RoomConnectionParams) _then;

/// Create a copy of RoomConnectionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomName = null,Object? participantName = null,}) {
  return _then(_RoomConnectionParams(
roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
