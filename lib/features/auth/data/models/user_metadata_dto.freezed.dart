// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_metadata_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserMetadataDto {

 bool get hasGrantedInterviewConsent;
/// Create a copy of UserMetadataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMetadataDtoCopyWith<UserMetadataDto> get copyWith => _$UserMetadataDtoCopyWithImpl<UserMetadataDto>(this as UserMetadataDto, _$identity);

  /// Serializes this UserMetadataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMetadataDto&&(identical(other.hasGrantedInterviewConsent, hasGrantedInterviewConsent) || other.hasGrantedInterviewConsent == hasGrantedInterviewConsent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasGrantedInterviewConsent);

@override
String toString() {
  return 'UserMetadataDto(hasGrantedInterviewConsent: $hasGrantedInterviewConsent)';
}


}

/// @nodoc
abstract mixin class $UserMetadataDtoCopyWith<$Res>  {
  factory $UserMetadataDtoCopyWith(UserMetadataDto value, $Res Function(UserMetadataDto) _then) = _$UserMetadataDtoCopyWithImpl;
@useResult
$Res call({
 bool hasGrantedInterviewConsent
});




}
/// @nodoc
class _$UserMetadataDtoCopyWithImpl<$Res>
    implements $UserMetadataDtoCopyWith<$Res> {
  _$UserMetadataDtoCopyWithImpl(this._self, this._then);

  final UserMetadataDto _self;
  final $Res Function(UserMetadataDto) _then;

/// Create a copy of UserMetadataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasGrantedInterviewConsent = null,}) {
  return _then(_self.copyWith(
hasGrantedInterviewConsent: null == hasGrantedInterviewConsent ? _self.hasGrantedInterviewConsent : hasGrantedInterviewConsent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserMetadataDto].
extension UserMetadataDtoPatterns on UserMetadataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserMetadataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserMetadataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserMetadataDto value)  $default,){
final _that = this;
switch (_that) {
case _UserMetadataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserMetadataDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserMetadataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasGrantedInterviewConsent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserMetadataDto() when $default != null:
return $default(_that.hasGrantedInterviewConsent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasGrantedInterviewConsent)  $default,) {final _that = this;
switch (_that) {
case _UserMetadataDto():
return $default(_that.hasGrantedInterviewConsent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasGrantedInterviewConsent)?  $default,) {final _that = this;
switch (_that) {
case _UserMetadataDto() when $default != null:
return $default(_that.hasGrantedInterviewConsent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserMetadataDto extends UserMetadataDto {
  const _UserMetadataDto({required this.hasGrantedInterviewConsent}): super._();
  factory _UserMetadataDto.fromJson(Map<String, dynamic> json) => _$UserMetadataDtoFromJson(json);

@override final  bool hasGrantedInterviewConsent;

/// Create a copy of UserMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMetadataDtoCopyWith<_UserMetadataDto> get copyWith => __$UserMetadataDtoCopyWithImpl<_UserMetadataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserMetadataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMetadataDto&&(identical(other.hasGrantedInterviewConsent, hasGrantedInterviewConsent) || other.hasGrantedInterviewConsent == hasGrantedInterviewConsent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasGrantedInterviewConsent);

@override
String toString() {
  return 'UserMetadataDto(hasGrantedInterviewConsent: $hasGrantedInterviewConsent)';
}


}

/// @nodoc
abstract mixin class _$UserMetadataDtoCopyWith<$Res> implements $UserMetadataDtoCopyWith<$Res> {
  factory _$UserMetadataDtoCopyWith(_UserMetadataDto value, $Res Function(_UserMetadataDto) _then) = __$UserMetadataDtoCopyWithImpl;
@override @useResult
$Res call({
 bool hasGrantedInterviewConsent
});




}
/// @nodoc
class __$UserMetadataDtoCopyWithImpl<$Res>
    implements _$UserMetadataDtoCopyWith<$Res> {
  __$UserMetadataDtoCopyWithImpl(this._self, this._then);

  final _UserMetadataDto _self;
  final $Res Function(_UserMetadataDto) _then;

/// Create a copy of UserMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasGrantedInterviewConsent = null,}) {
  return _then(_UserMetadataDto(
hasGrantedInterviewConsent: null == hasGrantedInterviewConsent ? _self.hasGrantedInterviewConsent : hasGrantedInterviewConsent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
