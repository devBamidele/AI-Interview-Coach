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

 String get participantName;// Optional interview type for backend to use in room name generation
 String? get interviewType;
/// Create a copy of RoomConnectionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomConnectionParamsCopyWith<RoomConnectionParams> get copyWith => _$RoomConnectionParamsCopyWithImpl<RoomConnectionParams>(this as RoomConnectionParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomConnectionParams&&(identical(other.participantName, participantName) || other.participantName == participantName)&&(identical(other.interviewType, interviewType) || other.interviewType == interviewType));
}


@override
int get hashCode => Object.hash(runtimeType,participantName,interviewType);

@override
String toString() {
  return 'RoomConnectionParams(participantName: $participantName, interviewType: $interviewType)';
}


}

/// @nodoc
abstract mixin class $RoomConnectionParamsCopyWith<$Res>  {
  factory $RoomConnectionParamsCopyWith(RoomConnectionParams value, $Res Function(RoomConnectionParams) _then) = _$RoomConnectionParamsCopyWithImpl;
@useResult
$Res call({
 String participantName, String? interviewType
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
@pragma('vm:prefer-inline') @override $Res call({Object? participantName = null,Object? interviewType = freezed,}) {
  return _then(_self.copyWith(
participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,interviewType: freezed == interviewType ? _self.interviewType : interviewType // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String participantName,  String? interviewType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomConnectionParams() when $default != null:
return $default(_that.participantName,_that.interviewType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String participantName,  String? interviewType)  $default,) {final _that = this;
switch (_that) {
case _RoomConnectionParams():
return $default(_that.participantName,_that.interviewType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String participantName,  String? interviewType)?  $default,) {final _that = this;
switch (_that) {
case _RoomConnectionParams() when $default != null:
return $default(_that.participantName,_that.interviewType);case _:
  return null;

}
}

}

/// @nodoc


class _RoomConnectionParams extends RoomConnectionParams {
  const _RoomConnectionParams({required this.participantName, this.interviewType}): super._();
  

@override final  String participantName;
// Optional interview type for backend to use in room name generation
@override final  String? interviewType;

/// Create a copy of RoomConnectionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomConnectionParamsCopyWith<_RoomConnectionParams> get copyWith => __$RoomConnectionParamsCopyWithImpl<_RoomConnectionParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomConnectionParams&&(identical(other.participantName, participantName) || other.participantName == participantName)&&(identical(other.interviewType, interviewType) || other.interviewType == interviewType));
}


@override
int get hashCode => Object.hash(runtimeType,participantName,interviewType);

@override
String toString() {
  return 'RoomConnectionParams(participantName: $participantName, interviewType: $interviewType)';
}


}

/// @nodoc
abstract mixin class _$RoomConnectionParamsCopyWith<$Res> implements $RoomConnectionParamsCopyWith<$Res> {
  factory _$RoomConnectionParamsCopyWith(_RoomConnectionParams value, $Res Function(_RoomConnectionParams) _then) = __$RoomConnectionParamsCopyWithImpl;
@override @useResult
$Res call({
 String participantName, String? interviewType
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
@override @pragma('vm:prefer-inline') $Res call({Object? participantName = null,Object? interviewType = freezed,}) {
  return _then(_RoomConnectionParams(
participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,interviewType: freezed == interviewType ? _self.interviewType : interviewType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
