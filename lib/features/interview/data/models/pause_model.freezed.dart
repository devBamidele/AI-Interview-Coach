// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pause_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PauseModel {

 double get duration; double get at;
/// Create a copy of PauseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PauseModelCopyWith<PauseModel> get copyWith => _$PauseModelCopyWithImpl<PauseModel>(this as PauseModel, _$identity);

  /// Serializes this PauseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PauseModel&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.at, at) || other.at == at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,duration,at);

@override
String toString() {
  return 'PauseModel(duration: $duration, at: $at)';
}


}

/// @nodoc
abstract mixin class $PauseModelCopyWith<$Res>  {
  factory $PauseModelCopyWith(PauseModel value, $Res Function(PauseModel) _then) = _$PauseModelCopyWithImpl;
@useResult
$Res call({
 double duration, double at
});




}
/// @nodoc
class _$PauseModelCopyWithImpl<$Res>
    implements $PauseModelCopyWith<$Res> {
  _$PauseModelCopyWithImpl(this._self, this._then);

  final PauseModel _self;
  final $Res Function(PauseModel) _then;

/// Create a copy of PauseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? duration = null,Object? at = null,}) {
  return _then(_self.copyWith(
duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PauseModel].
extension PauseModelPatterns on PauseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PauseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PauseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PauseModel value)  $default,){
final _that = this;
switch (_that) {
case _PauseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PauseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PauseModel() when $default != null:
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
case _PauseModel() when $default != null:
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
case _PauseModel():
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
case _PauseModel() when $default != null:
return $default(_that.duration,_that.at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PauseModel extends PauseModel {
  const _PauseModel({required this.duration, required this.at}): super._();
  factory _PauseModel.fromJson(Map<String, dynamic> json) => _$PauseModelFromJson(json);

@override final  double duration;
@override final  double at;

/// Create a copy of PauseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PauseModelCopyWith<_PauseModel> get copyWith => __$PauseModelCopyWithImpl<_PauseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PauseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PauseModel&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.at, at) || other.at == at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,duration,at);

@override
String toString() {
  return 'PauseModel(duration: $duration, at: $at)';
}


}

/// @nodoc
abstract mixin class _$PauseModelCopyWith<$Res> implements $PauseModelCopyWith<$Res> {
  factory _$PauseModelCopyWith(_PauseModel value, $Res Function(_PauseModel) _then) = __$PauseModelCopyWithImpl;
@override @useResult
$Res call({
 double duration, double at
});




}
/// @nodoc
class __$PauseModelCopyWithImpl<$Res>
    implements _$PauseModelCopyWith<$Res> {
  __$PauseModelCopyWithImpl(this._self, this._then);

  final _PauseModel _self;
  final $Res Function(_PauseModel) _then;

/// Create a copy of PauseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? duration = null,Object? at = null,}) {
  return _then(_PauseModel(
duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
