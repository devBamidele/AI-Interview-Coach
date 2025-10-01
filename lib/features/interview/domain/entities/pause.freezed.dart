// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pause.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pause {

 double get duration; double get at;
/// Create a copy of Pause
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PauseCopyWith<Pause> get copyWith => _$PauseCopyWithImpl<Pause>(this as Pause, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pause&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.at, at) || other.at == at));
}


@override
int get hashCode => Object.hash(runtimeType,duration,at);

@override
String toString() {
  return 'Pause(duration: $duration, at: $at)';
}


}

/// @nodoc
abstract mixin class $PauseCopyWith<$Res>  {
  factory $PauseCopyWith(Pause value, $Res Function(Pause) _then) = _$PauseCopyWithImpl;
@useResult
$Res call({
 double duration, double at
});




}
/// @nodoc
class _$PauseCopyWithImpl<$Res>
    implements $PauseCopyWith<$Res> {
  _$PauseCopyWithImpl(this._self, this._then);

  final Pause _self;
  final $Res Function(Pause) _then;

/// Create a copy of Pause
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? duration = null,Object? at = null,}) {
  return _then(_self.copyWith(
duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Pause].
extension PausePatterns on Pause {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pause value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pause() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pause value)  $default,){
final _that = this;
switch (_that) {
case _Pause():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pause value)?  $default,){
final _that = this;
switch (_that) {
case _Pause() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double duration,  double at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pause() when $default != null:
return $default(_that.duration,_that.at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double duration,  double at)  $default,) {final _that = this;
switch (_that) {
case _Pause():
return $default(_that.duration,_that.at);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double duration,  double at)?  $default,) {final _that = this;
switch (_that) {
case _Pause() when $default != null:
return $default(_that.duration,_that.at);case _:
  return null;

}
}

}

/// @nodoc


class _Pause implements Pause {
  const _Pause({required this.duration, required this.at});
  

@override final  double duration;
@override final  double at;

/// Create a copy of Pause
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PauseCopyWith<_Pause> get copyWith => __$PauseCopyWithImpl<_Pause>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pause&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.at, at) || other.at == at));
}


@override
int get hashCode => Object.hash(runtimeType,duration,at);

@override
String toString() {
  return 'Pause(duration: $duration, at: $at)';
}


}

/// @nodoc
abstract mixin class _$PauseCopyWith<$Res> implements $PauseCopyWith<$Res> {
  factory _$PauseCopyWith(_Pause value, $Res Function(_Pause) _then) = __$PauseCopyWithImpl;
@override @useResult
$Res call({
 double duration, double at
});




}
/// @nodoc
class __$PauseCopyWithImpl<$Res>
    implements _$PauseCopyWith<$Res> {
  __$PauseCopyWithImpl(this._self, this._then);

  final _Pause _self;
  final $Res Function(_Pause) _then;

/// Create a copy of Pause
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? duration = null,Object? at = null,}) {
  return _then(_Pause(
duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
