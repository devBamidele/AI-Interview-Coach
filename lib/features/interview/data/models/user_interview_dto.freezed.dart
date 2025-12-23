// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_interview_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInterviewDto {

 String get id; String get status; String get createdAt; double get duration; String? get caseQuestion; String? get difficulty; String? get candidateAnswer;// Summary scores only (not full breakdown)
 double? get overallWeightedScore; String? get overallLabel;
/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewDtoCopyWith<UserInterviewDto> get copyWith => _$UserInterviewDtoCopyWithImpl<UserInterviewDto>(this as UserInterviewDto, _$identity);

  /// Serializes this UserInterviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.caseQuestion, caseQuestion) || other.caseQuestion == caseQuestion)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.candidateAnswer, candidateAnswer) || other.candidateAnswer == candidateAnswer)&&(identical(other.overallWeightedScore, overallWeightedScore) || other.overallWeightedScore == overallWeightedScore)&&(identical(other.overallLabel, overallLabel) || other.overallLabel == overallLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,caseQuestion,difficulty,candidateAnswer,overallWeightedScore,overallLabel);

@override
String toString() {
  return 'UserInterviewDto(id: $id, status: $status, createdAt: $createdAt, duration: $duration, caseQuestion: $caseQuestion, difficulty: $difficulty, candidateAnswer: $candidateAnswer, overallWeightedScore: $overallWeightedScore, overallLabel: $overallLabel)';
}


}

/// @nodoc
abstract mixin class $UserInterviewDtoCopyWith<$Res>  {
  factory $UserInterviewDtoCopyWith(UserInterviewDto value, $Res Function(UserInterviewDto) _then) = _$UserInterviewDtoCopyWithImpl;
@useResult
$Res call({
 String id, String status, String createdAt, double duration, String? caseQuestion, String? difficulty, String? candidateAnswer, double? overallWeightedScore, String? overallLabel
});




}
/// @nodoc
class _$UserInterviewDtoCopyWithImpl<$Res>
    implements $UserInterviewDtoCopyWith<$Res> {
  _$UserInterviewDtoCopyWithImpl(this._self, this._then);

  final UserInterviewDto _self;
  final $Res Function(UserInterviewDto) _then;

/// Create a copy of UserInterviewDto
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


/// Adds pattern-matching-related methods to [UserInterviewDto].
extension UserInterviewDtoPatterns on UserInterviewDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewDto() when $default != null:
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
case _UserInterviewDto() when $default != null:
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
case _UserInterviewDto():
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
case _UserInterviewDto() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.caseQuestion,_that.difficulty,_that.candidateAnswer,_that.overallWeightedScore,_that.overallLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInterviewDto extends UserInterviewDto {
  const _UserInterviewDto({required this.id, required this.status, required this.createdAt, required this.duration, this.caseQuestion, this.difficulty, this.candidateAnswer, this.overallWeightedScore, this.overallLabel}): super._();
  factory _UserInterviewDto.fromJson(Map<String, dynamic> json) => _$UserInterviewDtoFromJson(json);

@override final  String id;
@override final  String status;
@override final  String createdAt;
@override final  double duration;
@override final  String? caseQuestion;
@override final  String? difficulty;
@override final  String? candidateAnswer;
// Summary scores only (not full breakdown)
@override final  double? overallWeightedScore;
@override final  String? overallLabel;

/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewDtoCopyWith<_UserInterviewDto> get copyWith => __$UserInterviewDtoCopyWithImpl<_UserInterviewDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInterviewDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.caseQuestion, caseQuestion) || other.caseQuestion == caseQuestion)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.candidateAnswer, candidateAnswer) || other.candidateAnswer == candidateAnswer)&&(identical(other.overallWeightedScore, overallWeightedScore) || other.overallWeightedScore == overallWeightedScore)&&(identical(other.overallLabel, overallLabel) || other.overallLabel == overallLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,caseQuestion,difficulty,candidateAnswer,overallWeightedScore,overallLabel);

@override
String toString() {
  return 'UserInterviewDto(id: $id, status: $status, createdAt: $createdAt, duration: $duration, caseQuestion: $caseQuestion, difficulty: $difficulty, candidateAnswer: $candidateAnswer, overallWeightedScore: $overallWeightedScore, overallLabel: $overallLabel)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewDtoCopyWith<$Res> implements $UserInterviewDtoCopyWith<$Res> {
  factory _$UserInterviewDtoCopyWith(_UserInterviewDto value, $Res Function(_UserInterviewDto) _then) = __$UserInterviewDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String createdAt, double duration, String? caseQuestion, String? difficulty, String? candidateAnswer, double? overallWeightedScore, String? overallLabel
});




}
/// @nodoc
class __$UserInterviewDtoCopyWithImpl<$Res>
    implements _$UserInterviewDtoCopyWith<$Res> {
  __$UserInterviewDtoCopyWithImpl(this._self, this._then);

  final _UserInterviewDto _self;
  final $Res Function(_UserInterviewDto) _then;

/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? caseQuestion = freezed,Object? difficulty = freezed,Object? candidateAnswer = freezed,Object? overallWeightedScore = freezed,Object? overallLabel = freezed,}) {
  return _then(_UserInterviewDto(
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
mixin _$UserInterviewsResponseDto {

 List<UserInterviewDto> get interviews; int get total;
/// Create a copy of UserInterviewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewsResponseDtoCopyWith<UserInterviewsResponseDto> get copyWith => _$UserInterviewsResponseDtoCopyWithImpl<UserInterviewsResponseDto>(this as UserInterviewsResponseDto, _$identity);

  /// Serializes this UserInterviewsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewsResponseDto&&const DeepCollectionEquality().equals(other.interviews, interviews)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(interviews),total);

@override
String toString() {
  return 'UserInterviewsResponseDto(interviews: $interviews, total: $total)';
}


}

/// @nodoc
abstract mixin class $UserInterviewsResponseDtoCopyWith<$Res>  {
  factory $UserInterviewsResponseDtoCopyWith(UserInterviewsResponseDto value, $Res Function(UserInterviewsResponseDto) _then) = _$UserInterviewsResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<UserInterviewDto> interviews, int total
});




}
/// @nodoc
class _$UserInterviewsResponseDtoCopyWithImpl<$Res>
    implements $UserInterviewsResponseDtoCopyWith<$Res> {
  _$UserInterviewsResponseDtoCopyWithImpl(this._self, this._then);

  final UserInterviewsResponseDto _self;
  final $Res Function(UserInterviewsResponseDto) _then;

/// Create a copy of UserInterviewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interviews = null,Object? total = null,}) {
  return _then(_self.copyWith(
interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<UserInterviewDto>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInterviewsResponseDto].
extension UserInterviewsResponseDtoPatterns on UserInterviewsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserInterviewDto> interviews,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterviewsResponseDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserInterviewDto> interviews,  int total)  $default,) {final _that = this;
switch (_that) {
case _UserInterviewsResponseDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserInterviewDto> interviews,  int total)?  $default,) {final _that = this;
switch (_that) {
case _UserInterviewsResponseDto() when $default != null:
return $default(_that.interviews,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInterviewsResponseDto extends UserInterviewsResponseDto {
  const _UserInterviewsResponseDto({required final  List<UserInterviewDto> interviews, required this.total}): _interviews = interviews,super._();
  factory _UserInterviewsResponseDto.fromJson(Map<String, dynamic> json) => _$UserInterviewsResponseDtoFromJson(json);

 final  List<UserInterviewDto> _interviews;
@override List<UserInterviewDto> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}

@override final  int total;

/// Create a copy of UserInterviewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewsResponseDtoCopyWith<_UserInterviewsResponseDto> get copyWith => __$UserInterviewsResponseDtoCopyWithImpl<_UserInterviewsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInterviewsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewsResponseDto&&const DeepCollectionEquality().equals(other._interviews, _interviews)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_interviews),total);

@override
String toString() {
  return 'UserInterviewsResponseDto(interviews: $interviews, total: $total)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewsResponseDtoCopyWith<$Res> implements $UserInterviewsResponseDtoCopyWith<$Res> {
  factory _$UserInterviewsResponseDtoCopyWith(_UserInterviewsResponseDto value, $Res Function(_UserInterviewsResponseDto) _then) = __$UserInterviewsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<UserInterviewDto> interviews, int total
});




}
/// @nodoc
class __$UserInterviewsResponseDtoCopyWithImpl<$Res>
    implements _$UserInterviewsResponseDtoCopyWith<$Res> {
  __$UserInterviewsResponseDtoCopyWithImpl(this._self, this._then);

  final _UserInterviewsResponseDto _self;
  final $Res Function(_UserInterviewsResponseDto) _then;

/// Create a copy of UserInterviewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interviews = null,Object? total = null,}) {
  return _then(_UserInterviewsResponseDto(
interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<UserInterviewDto>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
