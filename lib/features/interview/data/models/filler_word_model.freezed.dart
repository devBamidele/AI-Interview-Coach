// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filler_word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FillerWordModel {

 String get word; double get timestamp;
/// Create a copy of FillerWordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FillerWordModelCopyWith<FillerWordModel> get copyWith => _$FillerWordModelCopyWithImpl<FillerWordModel>(this as FillerWordModel, _$identity);

  /// Serializes this FillerWordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FillerWordModel&&(identical(other.word, word) || other.word == word)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,word,timestamp);

@override
String toString() {
  return 'FillerWordModel(word: $word, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $FillerWordModelCopyWith<$Res>  {
  factory $FillerWordModelCopyWith(FillerWordModel value, $Res Function(FillerWordModel) _then) = _$FillerWordModelCopyWithImpl;
@useResult
$Res call({
 String word, double timestamp
});




}
/// @nodoc
class _$FillerWordModelCopyWithImpl<$Res>
    implements $FillerWordModelCopyWith<$Res> {
  _$FillerWordModelCopyWithImpl(this._self, this._then);

  final FillerWordModel _self;
  final $Res Function(FillerWordModel) _then;

/// Create a copy of FillerWordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FillerWordModel].
extension FillerWordModelPatterns on FillerWordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FillerWordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillerWordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FillerWordModel value)  $default,){
final _that = this;
switch (_that) {
case _FillerWordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FillerWordModel value)?  $default,){
final _that = this;
switch (_that) {
case _FillerWordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String word,  double timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillerWordModel() when $default != null:
return $default(_that.word,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String word,  double timestamp)  $default,) {final _that = this;
switch (_that) {
case _FillerWordModel():
return $default(_that.word,_that.timestamp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String word,  double timestamp)?  $default,) {final _that = this;
switch (_that) {
case _FillerWordModel() when $default != null:
return $default(_that.word,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FillerWordModel extends FillerWordModel {
  const _FillerWordModel({required this.word, required this.timestamp}): super._();
  factory _FillerWordModel.fromJson(Map<String, dynamic> json) => _$FillerWordModelFromJson(json);

@override final  String word;
@override final  double timestamp;

/// Create a copy of FillerWordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillerWordModelCopyWith<_FillerWordModel> get copyWith => __$FillerWordModelCopyWithImpl<_FillerWordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FillerWordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillerWordModel&&(identical(other.word, word) || other.word == word)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,word,timestamp);

@override
String toString() {
  return 'FillerWordModel(word: $word, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$FillerWordModelCopyWith<$Res> implements $FillerWordModelCopyWith<$Res> {
  factory _$FillerWordModelCopyWith(_FillerWordModel value, $Res Function(_FillerWordModel) _then) = __$FillerWordModelCopyWithImpl;
@override @useResult
$Res call({
 String word, double timestamp
});




}
/// @nodoc
class __$FillerWordModelCopyWithImpl<$Res>
    implements _$FillerWordModelCopyWith<$Res> {
  __$FillerWordModelCopyWithImpl(this._self, this._then);

  final _FillerWordModel _self;
  final $Res Function(_FillerWordModel) _then;

/// Create a copy of FillerWordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? timestamp = null,}) {
  return _then(_FillerWordModel(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
