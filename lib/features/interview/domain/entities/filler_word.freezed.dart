// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filler_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FillerWord {

 String get word; double get timestamp;
/// Create a copy of FillerWord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FillerWordCopyWith<FillerWord> get copyWith => _$FillerWordCopyWithImpl<FillerWord>(this as FillerWord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FillerWord&&(identical(other.word, word) || other.word == word)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,word,timestamp);

@override
String toString() {
  return 'FillerWord(word: $word, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $FillerWordCopyWith<$Res>  {
  factory $FillerWordCopyWith(FillerWord value, $Res Function(FillerWord) _then) = _$FillerWordCopyWithImpl;
@useResult
$Res call({
 String word, double timestamp
});




}
/// @nodoc
class _$FillerWordCopyWithImpl<$Res>
    implements $FillerWordCopyWith<$Res> {
  _$FillerWordCopyWithImpl(this._self, this._then);

  final FillerWord _self;
  final $Res Function(FillerWord) _then;

/// Create a copy of FillerWord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FillerWord].
extension FillerWordPatterns on FillerWord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FillerWord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillerWord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FillerWord value)  $default,){
final _that = this;
switch (_that) {
case _FillerWord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FillerWord value)?  $default,){
final _that = this;
switch (_that) {
case _FillerWord() when $default != null:
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
case _FillerWord() when $default != null:
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
case _FillerWord():
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
case _FillerWord() when $default != null:
return $default(_that.word,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class _FillerWord implements FillerWord {
  const _FillerWord({required this.word, required this.timestamp});
  

@override final  String word;
@override final  double timestamp;

/// Create a copy of FillerWord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillerWordCopyWith<_FillerWord> get copyWith => __$FillerWordCopyWithImpl<_FillerWord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillerWord&&(identical(other.word, word) || other.word == word)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,word,timestamp);

@override
String toString() {
  return 'FillerWord(word: $word, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$FillerWordCopyWith<$Res> implements $FillerWordCopyWith<$Res> {
  factory _$FillerWordCopyWith(_FillerWord value, $Res Function(_FillerWord) _then) = __$FillerWordCopyWithImpl;
@override @useResult
$Res call({
 String word, double timestamp
});




}
/// @nodoc
class __$FillerWordCopyWithImpl<$Res>
    implements _$FillerWordCopyWith<$Res> {
  __$FillerWordCopyWithImpl(this._self, this._then);

  final _FillerWord _self;
  final $Res Function(_FillerWord) _then;

/// Create a copy of FillerWord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? timestamp = null,}) {
  return _then(_FillerWord(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
