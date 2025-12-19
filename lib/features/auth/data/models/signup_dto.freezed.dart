// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupDto {

 String get email; String get name; String get password;
/// Create a copy of SignupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupDtoCopyWith<SignupDto> get copyWith => _$SignupDtoCopyWithImpl<SignupDto>(this as SignupDto, _$identity);

  /// Serializes this SignupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupDto&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,password);

@override
String toString() {
  return 'SignupDto(email: $email, name: $name, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignupDtoCopyWith<$Res>  {
  factory $SignupDtoCopyWith(SignupDto value, $Res Function(SignupDto) _then) = _$SignupDtoCopyWithImpl;
@useResult
$Res call({
 String email, String name, String password
});




}
/// @nodoc
class _$SignupDtoCopyWithImpl<$Res>
    implements $SignupDtoCopyWith<$Res> {
  _$SignupDtoCopyWithImpl(this._self, this._then);

  final SignupDto _self;
  final $Res Function(SignupDto) _then;

/// Create a copy of SignupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupDto].
extension SignupDtoPatterns on SignupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupDto value)  $default,){
final _that = this;
switch (_that) {
case _SignupDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignupDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String name,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupDto() when $default != null:
return $default(_that.email,_that.name,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String name,  String password)  $default,) {final _that = this;
switch (_that) {
case _SignupDto():
return $default(_that.email,_that.name,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String name,  String password)?  $default,) {final _that = this;
switch (_that) {
case _SignupDto() when $default != null:
return $default(_that.email,_that.name,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupDto implements SignupDto {
  const _SignupDto({required this.email, required this.name, required this.password});
  factory _SignupDto.fromJson(Map<String, dynamic> json) => _$SignupDtoFromJson(json);

@override final  String email;
@override final  String name;
@override final  String password;

/// Create a copy of SignupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupDtoCopyWith<_SignupDto> get copyWith => __$SignupDtoCopyWithImpl<_SignupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupDto&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,password);

@override
String toString() {
  return 'SignupDto(email: $email, name: $name, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignupDtoCopyWith<$Res> implements $SignupDtoCopyWith<$Res> {
  factory _$SignupDtoCopyWith(_SignupDto value, $Res Function(_SignupDto) _then) = __$SignupDtoCopyWithImpl;
@override @useResult
$Res call({
 String email, String name, String password
});




}
/// @nodoc
class __$SignupDtoCopyWithImpl<$Res>
    implements _$SignupDtoCopyWith<$Res> {
  __$SignupDtoCopyWithImpl(this._self, this._then);

  final _SignupDto _self;
  final $Res Function(_SignupDto) _then;

/// Create a copy of SignupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = null,Object? password = null,}) {
  return _then(_SignupDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
