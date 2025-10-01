// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisEventModel {

 String get pace; List<FillerWordModel> get fillers; List<PauseModel> get pauses; int get totalWords; double get duration;
/// Create a copy of AnalysisEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisEventModelCopyWith<AnalysisEventModel> get copyWith => _$AnalysisEventModelCopyWithImpl<AnalysisEventModel>(this as AnalysisEventModel, _$identity);

  /// Serializes this AnalysisEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisEventModel&&(identical(other.pace, pace) || other.pace == pace)&&const DeepCollectionEquality().equals(other.fillers, fillers)&&const DeepCollectionEquality().equals(other.pauses, pauses)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pace,const DeepCollectionEquality().hash(fillers),const DeepCollectionEquality().hash(pauses),totalWords,duration);

@override
String toString() {
  return 'AnalysisEventModel(pace: $pace, fillers: $fillers, pauses: $pauses, totalWords: $totalWords, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $AnalysisEventModelCopyWith<$Res>  {
  factory $AnalysisEventModelCopyWith(AnalysisEventModel value, $Res Function(AnalysisEventModel) _then) = _$AnalysisEventModelCopyWithImpl;
@useResult
$Res call({
 String pace, List<FillerWordModel> fillers, List<PauseModel> pauses, int totalWords, double duration
});




}
/// @nodoc
class _$AnalysisEventModelCopyWithImpl<$Res>
    implements $AnalysisEventModelCopyWith<$Res> {
  _$AnalysisEventModelCopyWithImpl(this._self, this._then);

  final AnalysisEventModel _self;
  final $Res Function(AnalysisEventModel) _then;

/// Create a copy of AnalysisEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pace = null,Object? fillers = null,Object? pauses = null,Object? totalWords = null,Object? duration = null,}) {
  return _then(_self.copyWith(
pace: null == pace ? _self.pace : pace // ignore: cast_nullable_to_non_nullable
as String,fillers: null == fillers ? _self.fillers : fillers // ignore: cast_nullable_to_non_nullable
as List<FillerWordModel>,pauses: null == pauses ? _self.pauses : pauses // ignore: cast_nullable_to_non_nullable
as List<PauseModel>,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalysisEventModel].
extension AnalysisEventModelPatterns on AnalysisEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisEventModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pace,  List<FillerWordModel> fillers,  List<PauseModel> pauses,  int totalWords,  double duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisEventModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pace,  List<FillerWordModel> fillers,  List<PauseModel> pauses,  int totalWords,  double duration)  $default,) {final _that = this;
switch (_that) {
case _AnalysisEventModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pace,  List<FillerWordModel> fillers,  List<PauseModel> pauses,  int totalWords,  double duration)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisEventModel() when $default != null:
return $default(_that.pace,_that.fillers,_that.pauses,_that.totalWords,_that.duration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisEventModel extends AnalysisEventModel {
  const _AnalysisEventModel({required this.pace, required final  List<FillerWordModel> fillers, required final  List<PauseModel> pauses, required this.totalWords, required this.duration}): _fillers = fillers,_pauses = pauses,super._();
  factory _AnalysisEventModel.fromJson(Map<String, dynamic> json) => _$AnalysisEventModelFromJson(json);

@override final  String pace;
 final  List<FillerWordModel> _fillers;
@override List<FillerWordModel> get fillers {
  if (_fillers is EqualUnmodifiableListView) return _fillers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fillers);
}

 final  List<PauseModel> _pauses;
@override List<PauseModel> get pauses {
  if (_pauses is EqualUnmodifiableListView) return _pauses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pauses);
}

@override final  int totalWords;
@override final  double duration;

/// Create a copy of AnalysisEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisEventModelCopyWith<_AnalysisEventModel> get copyWith => __$AnalysisEventModelCopyWithImpl<_AnalysisEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisEventModel&&(identical(other.pace, pace) || other.pace == pace)&&const DeepCollectionEquality().equals(other._fillers, _fillers)&&const DeepCollectionEquality().equals(other._pauses, _pauses)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pace,const DeepCollectionEquality().hash(_fillers),const DeepCollectionEquality().hash(_pauses),totalWords,duration);

@override
String toString() {
  return 'AnalysisEventModel(pace: $pace, fillers: $fillers, pauses: $pauses, totalWords: $totalWords, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$AnalysisEventModelCopyWith<$Res> implements $AnalysisEventModelCopyWith<$Res> {
  factory _$AnalysisEventModelCopyWith(_AnalysisEventModel value, $Res Function(_AnalysisEventModel) _then) = __$AnalysisEventModelCopyWithImpl;
@override @useResult
$Res call({
 String pace, List<FillerWordModel> fillers, List<PauseModel> pauses, int totalWords, double duration
});




}
/// @nodoc
class __$AnalysisEventModelCopyWithImpl<$Res>
    implements _$AnalysisEventModelCopyWith<$Res> {
  __$AnalysisEventModelCopyWithImpl(this._self, this._then);

  final _AnalysisEventModel _self;
  final $Res Function(_AnalysisEventModel) _then;

/// Create a copy of AnalysisEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pace = null,Object? fillers = null,Object? pauses = null,Object? totalWords = null,Object? duration = null,}) {
  return _then(_AnalysisEventModel(
pace: null == pace ? _self.pace : pace // ignore: cast_nullable_to_non_nullable
as String,fillers: null == fillers ? _self._fillers : fillers // ignore: cast_nullable_to_non_nullable
as List<FillerWordModel>,pauses: null == pauses ? _self._pauses : pauses // ignore: cast_nullable_to_non_nullable
as List<PauseModel>,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
