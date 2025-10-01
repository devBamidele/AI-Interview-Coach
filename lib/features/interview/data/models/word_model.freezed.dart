// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordModel {

 String get word; double get start; double get end; double get confidence;
/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordModelCopyWith<WordModel> get copyWith => _$WordModelCopyWithImpl<WordModel>(this as WordModel, _$identity);

  /// Serializes this WordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordModel&&(identical(other.word, word) || other.word == word)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,word,start,end,confidence);

@override
String toString() {
  return 'WordModel(word: $word, start: $start, end: $end, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $WordModelCopyWith<$Res>  {
  factory $WordModelCopyWith(WordModel value, $Res Function(WordModel) _then) = _$WordModelCopyWithImpl;
@useResult
$Res call({
 String word, double start, double end, double confidence
});




}
/// @nodoc
class _$WordModelCopyWithImpl<$Res>
    implements $WordModelCopyWith<$Res> {
  _$WordModelCopyWithImpl(this._self, this._then);

  final WordModel _self;
  final $Res Function(WordModel) _then;

/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? start = null,Object? end = null,Object? confidence = null,}) {
  return _then(_self.copyWith(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as double,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as double,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WordModel].
extension WordModelPatterns on WordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordModel value)  $default,){
final _that = this;
switch (_that) {
case _WordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordModel value)?  $default,){
final _that = this;
switch (_that) {
case _WordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String word,  double start,  double end,  double confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordModel() when $default != null:
return $default(_that.word,_that.start,_that.end,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String word,  double start,  double end,  double confidence)  $default,) {final _that = this;
switch (_that) {
case _WordModel():
return $default(_that.word,_that.start,_that.end,_that.confidence);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String word,  double start,  double end,  double confidence)?  $default,) {final _that = this;
switch (_that) {
case _WordModel() when $default != null:
return $default(_that.word,_that.start,_that.end,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordModel extends WordModel {
  const _WordModel({required this.word, required this.start, required this.end, required this.confidence}): super._();
  factory _WordModel.fromJson(Map<String, dynamic> json) => _$WordModelFromJson(json);

@override final  String word;
@override final  double start;
@override final  double end;
@override final  double confidence;

/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordModelCopyWith<_WordModel> get copyWith => __$WordModelCopyWithImpl<_WordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordModel&&(identical(other.word, word) || other.word == word)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,word,start,end,confidence);

@override
String toString() {
  return 'WordModel(word: $word, start: $start, end: $end, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$WordModelCopyWith<$Res> implements $WordModelCopyWith<$Res> {
  factory _$WordModelCopyWith(_WordModel value, $Res Function(_WordModel) _then) = __$WordModelCopyWithImpl;
@override @useResult
$Res call({
 String word, double start, double end, double confidence
});




}
/// @nodoc
class __$WordModelCopyWithImpl<$Res>
    implements _$WordModelCopyWith<$Res> {
  __$WordModelCopyWithImpl(this._self, this._then);

  final _WordModel _self;
  final $Res Function(_WordModel) _then;

/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? start = null,Object? end = null,Object? confidence = null,}) {
  return _then(_WordModel(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as double,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as double,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
