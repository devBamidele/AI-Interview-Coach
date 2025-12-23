// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_interview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserInterview {

 String get id; String get status; String get createdAt; double get duration; String? get caseQuestion; String? get difficulty; String? get candidateAnswer;// Summary scores only (not full analysis breakdown)
 double? get overallWeightedScore; String? get overallLabel;
/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewCopyWith<UserInterview> get copyWith => _$UserInterviewCopyWithImpl<UserInterview>(this as UserInterview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterview&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.caseQuestion, caseQuestion) || other.caseQuestion == caseQuestion)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.candidateAnswer, candidateAnswer) || other.candidateAnswer == candidateAnswer)&&(identical(other.overallWeightedScore, overallWeightedScore) || other.overallWeightedScore == overallWeightedScore)&&(identical(other.overallLabel, overallLabel) || other.overallLabel == overallLabel));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,caseQuestion,difficulty,candidateAnswer,overallWeightedScore,overallLabel);

@override
String toString() {
  return 'UserInterview(id: $id, status: $status, createdAt: $createdAt, duration: $duration, caseQuestion: $caseQuestion, difficulty: $difficulty, candidateAnswer: $candidateAnswer, overallWeightedScore: $overallWeightedScore, overallLabel: $overallLabel)';
}


}

/// @nodoc
abstract mixin class $UserInterviewCopyWith<$Res>  {
  factory $UserInterviewCopyWith(UserInterview value, $Res Function(UserInterview) _then) = _$UserInterviewCopyWithImpl;
@useResult
$Res call({
 String id, String status, String createdAt, double duration, String? caseQuestion, String? difficulty, String? candidateAnswer, double? overallWeightedScore, String? overallLabel
});




}
/// @nodoc
class _$UserInterviewCopyWithImpl<$Res>
    implements $UserInterviewCopyWith<$Res> {
  _$UserInterviewCopyWithImpl(this._self, this._then);

  final UserInterview _self;
  final $Res Function(UserInterview) _then;

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? caseQuestion = freezed,Object? difficulty = freezed,Object? candidateAnswer = freezed,Object? overallWeightedScore = freezed,Object? overallLabel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,caseQuestion: freezed == caseQuestion ? _self.caseQuestion : caseQuestion // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,candidateAnswer: freezed == candidateAnswer ? _self.candidateAnswer : candidateAnswer // ignore: cast_nullable_to_non_nullable
as String?,overallWeightedScore: freezed == overallWeightedScore ? _self.overallWeightedScore : overallWeightedScore // ignore: cast_nullable_to_non_nullable
as double?,overallLabel: freezed == overallLabel ? _self.overallLabel : overallLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInterview].
extension UserInterviewPatterns on UserInterview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterview value)  $default,){
final _that = this;
switch (_that) {
case _UserInterview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterview value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String createdAt,  double duration,  String? caseQuestion,  String? difficulty,  String? candidateAnswer,  double? overallWeightedScore,  String? overallLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterview() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.overallWeightedScore,_that.overallLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String createdAt,  double duration,  String? caseQuestion,  String? difficulty,  String? candidateAnswer,  double? overallWeightedScore,  String? overallLabel)  $default,) {final _that = this;
switch (_that) {
case _UserInterview():
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.overallWeightedScore,_that.overallLabel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String createdAt,  double duration,  String? caseQuestion,  String? difficulty,  String? candidateAnswer,  double? overallWeightedScore,  String? overallLabel)?  $default,) {final _that = this;
switch (_that) {
case _UserInterview() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.overallWeightedScore,_that.overallLabel);case _:
  return null;

}
}

}

/// @nodoc


class _UserInterview extends UserInterview {
  const _UserInterview({required this.id, required this.status, required this.createdAt, required this.duration, this.caseQuestion, this.difficulty, this.candidateAnswer, this.overallWeightedScore, this.overallLabel}): super._();
  

@override final  String id;
@override final  String status;
@override final  String createdAt;
@override final  double duration;
@override final  String? caseQuestion;
@override final  String? difficulty;
@override final  String? candidateAnswer;
// Summary scores only (not full analysis breakdown)
@override final  double? overallWeightedScore;
@override final  String? overallLabel;

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewCopyWith<_UserInterview> get copyWith => __$UserInterviewCopyWithImpl<_UserInterview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterview&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.caseQuestion, caseQuestion) || other.caseQuestion == caseQuestion)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.candidateAnswer, candidateAnswer) || other.candidateAnswer == candidateAnswer)&&(identical(other.overallWeightedScore, overallWeightedScore) || other.overallWeightedScore == overallWeightedScore)&&(identical(other.overallLabel, overallLabel) || other.overallLabel == overallLabel));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,caseQuestion,difficulty,candidateAnswer,overallWeightedScore,overallLabel);

@override
String toString() {
  return 'UserInterview(id: $id, status: $status, createdAt: $createdAt, duration: $duration, caseQuestion: $caseQuestion, difficulty: $difficulty, candidateAnswer: $candidateAnswer, overallWeightedScore: $overallWeightedScore, overallLabel: $overallLabel)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewCopyWith<$Res> implements $UserInterviewCopyWith<$Res> {
  factory _$UserInterviewCopyWith(_UserInterview value, $Res Function(_UserInterview) _then) = __$UserInterviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String createdAt, double duration, String? caseQuestion, String? difficulty, String? candidateAnswer, double? overallWeightedScore, String? overallLabel
});




}
/// @nodoc
class __$UserInterviewCopyWithImpl<$Res>
    implements _$UserInterviewCopyWith<$Res> {
  __$UserInterviewCopyWithImpl(this._self, this._then);

  final _UserInterview _self;
  final $Res Function(_UserInterview) _then;

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? caseQuestion = freezed,Object? difficulty = freezed,Object? candidateAnswer = freezed,Object? overallWeightedScore = freezed,Object? overallLabel = freezed,}) {
  return _then(_UserInterview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,caseQuestion: freezed == caseQuestion ? _self.caseQuestion : caseQuestion // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,candidateAnswer: freezed == candidateAnswer ? _self.candidateAnswer : candidateAnswer // ignore: cast_nullable_to_non_nullable
as String?,overallWeightedScore: freezed == overallWeightedScore ? _self.overallWeightedScore : overallWeightedScore // ignore: cast_nullable_to_non_nullable
as double?,overallLabel: freezed == overallLabel ? _self.overallLabel : overallLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$UserInterviewsResponse {

 List<UserInterview> get interviews; int get total;
/// Create a copy of UserInterviewsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewsResponseCopyWith<UserInterviewsResponse> get copyWith => _$UserInterviewsResponseCopyWithImpl<UserInterviewsResponse>(this as UserInterviewsResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewsResponse&&const DeepCollectionEquality().equals(other.interviews, interviews)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(interviews),total);

@override
String toString() {
  return 'UserInterviewsResponse(interviews: $interviews, total: $total)';
}


}

/// @nodoc
abstract mixin class $UserInterviewsResponseCopyWith<$Res>  {
  factory $UserInterviewsResponseCopyWith(UserInterviewsResponse value, $Res Function(UserInterviewsResponse) _then) = _$UserInterviewsResponseCopyWithImpl;
@useResult
$Res call({
 List<UserInterview> interviews, int total
});




}
/// @nodoc
class _$UserInterviewsResponseCopyWithImpl<$Res>
    implements $UserInterviewsResponseCopyWith<$Res> {
  _$UserInterviewsResponseCopyWithImpl(this._self, this._then);

  final UserInterviewsResponse _self;
  final $Res Function(UserInterviewsResponse) _then;

/// Create a copy of UserInterviewsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interviews = null,Object? total = null,}) {
  return _then(_self.copyWith(
interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<UserInterview>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInterviewsResponse].
extension UserInterviewsResponsePatterns on UserInterviewsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewsResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserInterview> interviews,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterviewsResponse() when $default != null:
return $default(_that.interviews,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserInterview> interviews,  int total)  $default,) {final _that = this;
switch (_that) {
case _UserInterviewsResponse():
return $default(_that.interviews,_that.total);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserInterview> interviews,  int total)?  $default,) {final _that = this;
switch (_that) {
case _UserInterviewsResponse() when $default != null:
return $default(_that.interviews,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _UserInterviewsResponse implements UserInterviewsResponse {
  const _UserInterviewsResponse({required final  List<UserInterview> interviews, required this.total}): _interviews = interviews;
  

 final  List<UserInterview> _interviews;
@override List<UserInterview> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}

@override final  int total;

/// Create a copy of UserInterviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewsResponseCopyWith<_UserInterviewsResponse> get copyWith => __$UserInterviewsResponseCopyWithImpl<_UserInterviewsResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewsResponse&&const DeepCollectionEquality().equals(other._interviews, _interviews)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_interviews),total);

@override
String toString() {
  return 'UserInterviewsResponse(interviews: $interviews, total: $total)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewsResponseCopyWith<$Res> implements $UserInterviewsResponseCopyWith<$Res> {
  factory _$UserInterviewsResponseCopyWith(_UserInterviewsResponse value, $Res Function(_UserInterviewsResponse) _then) = __$UserInterviewsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<UserInterview> interviews, int total
});




}
/// @nodoc
class __$UserInterviewsResponseCopyWithImpl<$Res>
    implements _$UserInterviewsResponseCopyWith<$Res> {
  __$UserInterviewsResponseCopyWithImpl(this._self, this._then);

  final _UserInterviewsResponse _self;
  final $Res Function(_UserInterviewsResponse) _then;

/// Create a copy of UserInterviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interviews = null,Object? total = null,}) {
  return _then(_UserInterviewsResponse(
interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<UserInterview>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
