// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcript_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranscriptEventModel {

 String get text; bool get isFinal; List<WordModel> get words;
/// Create a copy of TranscriptEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranscriptEventModelCopyWith<TranscriptEventModel> get copyWith => _$TranscriptEventModelCopyWithImpl<TranscriptEventModel>(this as TranscriptEventModel, _$identity);

  /// Serializes this TranscriptEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranscriptEventModel&&(identical(other.text, text) || other.text == text)&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal)&&const DeepCollectionEquality().equals(other.words, words));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isFinal,const DeepCollectionEquality().hash(words));

@override
String toString() {
  return 'TranscriptEventModel(text: $text, isFinal: $isFinal, words: $words)';
}


}

/// @nodoc
abstract mixin class $TranscriptEventModelCopyWith<$Res>  {
  factory $TranscriptEventModelCopyWith(TranscriptEventModel value, $Res Function(TranscriptEventModel) _then) = _$TranscriptEventModelCopyWithImpl;
@useResult
$Res call({
 String text, bool isFinal, List<WordModel> words
});




}
/// @nodoc
class _$TranscriptEventModelCopyWithImpl<$Res>
    implements $TranscriptEventModelCopyWith<$Res> {
  _$TranscriptEventModelCopyWithImpl(this._self, this._then);

  final TranscriptEventModel _self;
  final $Res Function(TranscriptEventModel) _then;

/// Create a copy of TranscriptEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? isFinal = null,Object? words = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isFinal: null == isFinal ? _self.isFinal : isFinal // ignore: cast_nullable_to_non_nullable
as bool,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<WordModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TranscriptEventModel].
extension TranscriptEventModelPatterns on TranscriptEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranscriptEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranscriptEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranscriptEventModel value)  $default,){
final _that = this;
switch (_that) {
case _TranscriptEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranscriptEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _TranscriptEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool isFinal,  List<WordModel> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranscriptEventModel() when $default != null:
return $default(_that.text,_that.isFinal,_that.words);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool isFinal,  List<WordModel> words)  $default,) {final _that = this;
switch (_that) {
case _TranscriptEventModel():
return $default(_that.text,_that.isFinal,_that.words);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool isFinal,  List<WordModel> words)?  $default,) {final _that = this;
switch (_that) {
case _TranscriptEventModel() when $default != null:
return $default(_that.text,_that.isFinal,_that.words);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranscriptEventModel extends TranscriptEventModel {
  const _TranscriptEventModel({required this.text, required this.isFinal, required final  List<WordModel> words}): _words = words,super._();
  factory _TranscriptEventModel.fromJson(Map<String, dynamic> json) => _$TranscriptEventModelFromJson(json);

@override final  String text;
@override final  bool isFinal;
 final  List<WordModel> _words;
@override List<WordModel> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of TranscriptEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranscriptEventModelCopyWith<_TranscriptEventModel> get copyWith => __$TranscriptEventModelCopyWithImpl<_TranscriptEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranscriptEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranscriptEventModel&&(identical(other.text, text) || other.text == text)&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal)&&const DeepCollectionEquality().equals(other._words, _words));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isFinal,const DeepCollectionEquality().hash(_words));

@override
String toString() {
  return 'TranscriptEventModel(text: $text, isFinal: $isFinal, words: $words)';
}


}

/// @nodoc
abstract mixin class _$TranscriptEventModelCopyWith<$Res> implements $TranscriptEventModelCopyWith<$Res> {
  factory _$TranscriptEventModelCopyWith(_TranscriptEventModel value, $Res Function(_TranscriptEventModel) _then) = __$TranscriptEventModelCopyWithImpl;
@override @useResult
$Res call({
 String text, bool isFinal, List<WordModel> words
});




}
/// @nodoc
class __$TranscriptEventModelCopyWithImpl<$Res>
    implements _$TranscriptEventModelCopyWith<$Res> {
  __$TranscriptEventModelCopyWithImpl(this._self, this._then);

  final _TranscriptEventModel _self;
  final $Res Function(_TranscriptEventModel) _then;

/// Create a copy of TranscriptEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isFinal = null,Object? words = null,}) {
  return _then(_TranscriptEventModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isFinal: null == isFinal ? _self.isFinal : isFinal // ignore: cast_nullable_to_non_nullable
as bool,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<WordModel>,
  ));
}


}

// dart format on
