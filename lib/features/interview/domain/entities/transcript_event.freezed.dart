// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcript_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TranscriptEvent {

 String get text; bool get isFinal; List<Word> get words;
/// Create a copy of TranscriptEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranscriptEventCopyWith<TranscriptEvent> get copyWith => _$TranscriptEventCopyWithImpl<TranscriptEvent>(this as TranscriptEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranscriptEvent&&(identical(other.text, text) || other.text == text)&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal)&&const DeepCollectionEquality().equals(other.words, words));
}


@override
int get hashCode => Object.hash(runtimeType,text,isFinal,const DeepCollectionEquality().hash(words));

@override
String toString() {
  return 'TranscriptEvent(text: $text, isFinal: $isFinal, words: $words)';
}


}

/// @nodoc
abstract mixin class $TranscriptEventCopyWith<$Res>  {
  factory $TranscriptEventCopyWith(TranscriptEvent value, $Res Function(TranscriptEvent) _then) = _$TranscriptEventCopyWithImpl;
@useResult
$Res call({
 String text, bool isFinal, List<Word> words
});




}
/// @nodoc
class _$TranscriptEventCopyWithImpl<$Res>
    implements $TranscriptEventCopyWith<$Res> {
  _$TranscriptEventCopyWithImpl(this._self, this._then);

  final TranscriptEvent _self;
  final $Res Function(TranscriptEvent) _then;

/// Create a copy of TranscriptEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? isFinal = null,Object? words = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isFinal: null == isFinal ? _self.isFinal : isFinal // ignore: cast_nullable_to_non_nullable
as bool,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<Word>,
  ));
}

}


/// Adds pattern-matching-related methods to [TranscriptEvent].
extension TranscriptEventPatterns on TranscriptEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranscriptEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranscriptEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranscriptEvent value)  $default,){
final _that = this;
switch (_that) {
case _TranscriptEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranscriptEvent value)?  $default,){
final _that = this;
switch (_that) {
case _TranscriptEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool isFinal,  List<Word> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranscriptEvent() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool isFinal,  List<Word> words)  $default,) {final _that = this;
switch (_that) {
case _TranscriptEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool isFinal,  List<Word> words)?  $default,) {final _that = this;
switch (_that) {
case _TranscriptEvent() when $default != null:
return $default(_that.text,_that.isFinal,_that.words);case _:
  return null;

}
}

}

/// @nodoc


class _TranscriptEvent implements TranscriptEvent {
  const _TranscriptEvent({required this.text, required this.isFinal, required final  List<Word> words}): _words = words;
  

@override final  String text;
@override final  bool isFinal;
 final  List<Word> _words;
@override List<Word> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of TranscriptEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranscriptEventCopyWith<_TranscriptEvent> get copyWith => __$TranscriptEventCopyWithImpl<_TranscriptEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranscriptEvent&&(identical(other.text, text) || other.text == text)&&(identical(other.isFinal, isFinal) || other.isFinal == isFinal)&&const DeepCollectionEquality().equals(other._words, _words));
}


@override
int get hashCode => Object.hash(runtimeType,text,isFinal,const DeepCollectionEquality().hash(_words));

@override
String toString() {
  return 'TranscriptEvent(text: $text, isFinal: $isFinal, words: $words)';
}


}

/// @nodoc
abstract mixin class _$TranscriptEventCopyWith<$Res> implements $TranscriptEventCopyWith<$Res> {
  factory _$TranscriptEventCopyWith(_TranscriptEvent value, $Res Function(_TranscriptEvent) _then) = __$TranscriptEventCopyWithImpl;
@override @useResult
$Res call({
 String text, bool isFinal, List<Word> words
});




}
/// @nodoc
class __$TranscriptEventCopyWithImpl<$Res>
    implements _$TranscriptEventCopyWith<$Res> {
  __$TranscriptEventCopyWithImpl(this._self, this._then);

  final _TranscriptEvent _self;
  final $Res Function(_TranscriptEvent) _then;

/// Create a copy of TranscriptEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isFinal = null,Object? words = null,}) {
  return _then(_TranscriptEvent(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isFinal: null == isFinal ? _self.isFinal : isFinal // ignore: cast_nullable_to_non_nullable
as bool,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<Word>,
  ));
}


}

// dart format on
