// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnalysisEvent {

 String get pace; List<FillerWord> get fillers; List<Pause> get pauses; int get totalWords; double get duration;
/// Create a copy of AnalysisEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisEventCopyWith<AnalysisEvent> get copyWith => _$AnalysisEventCopyWithImpl<AnalysisEvent>(this as AnalysisEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisEvent&&(identical(other.pace, pace) || other.pace == pace)&&const DeepCollectionEquality().equals(other.fillers, fillers)&&const DeepCollectionEquality().equals(other.pauses, pauses)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,pace,const DeepCollectionEquality().hash(fillers),const DeepCollectionEquality().hash(pauses),totalWords,duration);

@override
String toString() {
  return 'AnalysisEvent(pace: $pace, fillers: $fillers, pauses: $pauses, totalWords: $totalWords, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $AnalysisEventCopyWith<$Res>  {
  factory $AnalysisEventCopyWith(AnalysisEvent value, $Res Function(AnalysisEvent) _then) = _$AnalysisEventCopyWithImpl;
@useResult
$Res call({
 String pace, List<FillerWord> fillers, List<Pause> pauses, int totalWords, double duration
});




}
/// @nodoc
class _$AnalysisEventCopyWithImpl<$Res>
    implements $AnalysisEventCopyWith<$Res> {
  _$AnalysisEventCopyWithImpl(this._self, this._then);

  final AnalysisEvent _self;
  final $Res Function(AnalysisEvent) _then;

/// Create a copy of AnalysisEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pace = null,Object? fillers = null,Object? pauses = null,Object? totalWords = null,Object? duration = null,}) {
  return _then(_self.copyWith(
pace: null == pace ? _self.pace : pace // ignore: cast_nullable_to_non_nullable
as String,fillers: null == fillers ? _self.fillers : fillers // ignore: cast_nullable_to_non_nullable
as List<FillerWord>,pauses: null == pauses ? _self.pauses : pauses // ignore: cast_nullable_to_non_nullable
as List<Pause>,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalysisEvent].
extension AnalysisEventPatterns on AnalysisEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisEvent value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisEvent value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pace,  List<FillerWord> fillers,  List<Pause> pauses,  int totalWords,  double duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisEvent() when $default != null:
return $default(_that.pace,_that.fillers,_that.pauses,_that.totalWords,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pace,  List<FillerWord> fillers,  List<Pause> pauses,  int totalWords,  double duration)  $default,) {final _that = this;
switch (_that) {
case _AnalysisEvent():
return $default(_that.pace,_that.fillers,_that.pauses,_that.totalWords,_that.duration);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pace,  List<FillerWord> fillers,  List<Pause> pauses,  int totalWords,  double duration)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisEvent() when $default != null:
return $default(_that.pace,_that.fillers,_that.pauses,_that.totalWords,_that.duration);case _:
  return null;

}
}

}

/// @nodoc


class _AnalysisEvent implements AnalysisEvent {
  const _AnalysisEvent({required this.pace, required final  List<FillerWord> fillers, required final  List<Pause> pauses, required this.totalWords, required this.duration}): _fillers = fillers,_pauses = pauses;
  

@override final  String pace;
 final  List<FillerWord> _fillers;
@override List<FillerWord> get fillers {
  if (_fillers is EqualUnmodifiableListView) return _fillers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fillers);
}

 final  List<Pause> _pauses;
@override List<Pause> get pauses {
  if (_pauses is EqualUnmodifiableListView) return _pauses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pauses);
}

@override final  int totalWords;
@override final  double duration;

/// Create a copy of AnalysisEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisEventCopyWith<_AnalysisEvent> get copyWith => __$AnalysisEventCopyWithImpl<_AnalysisEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisEvent&&(identical(other.pace, pace) || other.pace == pace)&&const DeepCollectionEquality().equals(other._fillers, _fillers)&&const DeepCollectionEquality().equals(other._pauses, _pauses)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,pace,const DeepCollectionEquality().hash(_fillers),const DeepCollectionEquality().hash(_pauses),totalWords,duration);

@override
String toString() {
  return 'AnalysisEvent(pace: $pace, fillers: $fillers, pauses: $pauses, totalWords: $totalWords, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$AnalysisEventCopyWith<$Res> implements $AnalysisEventCopyWith<$Res> {
  factory _$AnalysisEventCopyWith(_AnalysisEvent value, $Res Function(_AnalysisEvent) _then) = __$AnalysisEventCopyWithImpl;
@override @useResult
$Res call({
 String pace, List<FillerWord> fillers, List<Pause> pauses, int totalWords, double duration
});




}
/// @nodoc
class __$AnalysisEventCopyWithImpl<$Res>
    implements _$AnalysisEventCopyWith<$Res> {
  __$AnalysisEventCopyWithImpl(this._self, this._then);

  final _AnalysisEvent _self;
  final $Res Function(_AnalysisEvent) _then;

/// Create a copy of AnalysisEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pace = null,Object? fillers = null,Object? pauses = null,Object? totalWords = null,Object? duration = null,}) {
  return _then(_AnalysisEvent(
pace: null == pace ? _self.pace : pace // ignore: cast_nullable_to_non_nullable
as String,fillers: null == fillers ? _self._fillers : fillers // ignore: cast_nullable_to_non_nullable
as List<FillerWord>,pauses: null == pauses ? _self._pauses : pauses // ignore: cast_nullable_to_non_nullable
as List<Pause>,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
