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

 String get id; String get status; String get createdAt; double get duration; String? get recordingUrl; UserInfoDto? get userId; UserInterviewMetricsDto? get metrics; UserInterviewAIAnalysisDto? get aiAnalysis;
/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewDtoCopyWith<UserInterviewDto> get copyWith => _$UserInterviewDtoCopyWithImpl<UserInterviewDto>(this as UserInterviewDto, _$identity);

  /// Serializes this UserInterviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,recordingUrl,userId,metrics,aiAnalysis);

@override
String toString() {
  return 'UserInterviewDto(id: $id, status: $status, createdAt: $createdAt, duration: $duration, recordingUrl: $recordingUrl, userId: $userId, metrics: $metrics, aiAnalysis: $aiAnalysis)';
}


}

/// @nodoc
abstract mixin class $UserInterviewDtoCopyWith<$Res>  {
  factory $UserInterviewDtoCopyWith(UserInterviewDto value, $Res Function(UserInterviewDto) _then) = _$UserInterviewDtoCopyWithImpl;
@useResult
$Res call({
 String id, String status, String createdAt, double duration, String? recordingUrl, UserInfoDto? userId, UserInterviewMetricsDto? metrics, UserInterviewAIAnalysisDto? aiAnalysis
});


$UserInfoDtoCopyWith<$Res>? get userId;$UserInterviewMetricsDtoCopyWith<$Res>? get metrics;$UserInterviewAIAnalysisDtoCopyWith<$Res>? get aiAnalysis;

}
/// @nodoc
class _$UserInterviewDtoCopyWithImpl<$Res>
    implements $UserInterviewDtoCopyWith<$Res> {
  _$UserInterviewDtoCopyWithImpl(this._self, this._then);

  final UserInterviewDto _self;
  final $Res Function(UserInterviewDto) _then;

/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? recordingUrl = freezed,Object? userId = freezed,Object? metrics = freezed,Object? aiAnalysis = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserInfoDto?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as UserInterviewMetricsDto?,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as UserInterviewAIAnalysisDto?,
  ));
}
/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoDtoCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UserInfoDtoCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewMetricsDtoCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $UserInterviewMetricsDtoCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewAIAnalysisDtoCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $UserInterviewAIAnalysisDtoCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String createdAt,  double duration,  String? recordingUrl,  UserInfoDto? userId,  UserInterviewMetricsDto? metrics,  UserInterviewAIAnalysisDto? aiAnalysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterviewDto() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.recordingUrl,_that.userId,_that.metrics,_that.aiAnalysis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String createdAt,  double duration,  String? recordingUrl,  UserInfoDto? userId,  UserInterviewMetricsDto? metrics,  UserInterviewAIAnalysisDto? aiAnalysis)  $default,) {final _that = this;
switch (_that) {
case _UserInterviewDto():
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.recordingUrl,_that.userId,_that.metrics,_that.aiAnalysis);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String createdAt,  double duration,  String? recordingUrl,  UserInfoDto? userId,  UserInterviewMetricsDto? metrics,  UserInterviewAIAnalysisDto? aiAnalysis)?  $default,) {final _that = this;
switch (_that) {
case _UserInterviewDto() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.recordingUrl,_that.userId,_that.metrics,_that.aiAnalysis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInterviewDto extends UserInterviewDto {
  const _UserInterviewDto({required this.id, required this.status, required this.createdAt, required this.duration, this.recordingUrl, this.userId, this.metrics, this.aiAnalysis}): super._();
  factory _UserInterviewDto.fromJson(Map<String, dynamic> json) => _$UserInterviewDtoFromJson(json);

@override final  String id;
@override final  String status;
@override final  String createdAt;
@override final  double duration;
@override final  String? recordingUrl;
@override final  UserInfoDto? userId;
@override final  UserInterviewMetricsDto? metrics;
@override final  UserInterviewAIAnalysisDto? aiAnalysis;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,recordingUrl,userId,metrics,aiAnalysis);

@override
String toString() {
  return 'UserInterviewDto(id: $id, status: $status, createdAt: $createdAt, duration: $duration, recordingUrl: $recordingUrl, userId: $userId, metrics: $metrics, aiAnalysis: $aiAnalysis)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewDtoCopyWith<$Res> implements $UserInterviewDtoCopyWith<$Res> {
  factory _$UserInterviewDtoCopyWith(_UserInterviewDto value, $Res Function(_UserInterviewDto) _then) = __$UserInterviewDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String createdAt, double duration, String? recordingUrl, UserInfoDto? userId, UserInterviewMetricsDto? metrics, UserInterviewAIAnalysisDto? aiAnalysis
});


@override $UserInfoDtoCopyWith<$Res>? get userId;@override $UserInterviewMetricsDtoCopyWith<$Res>? get metrics;@override $UserInterviewAIAnalysisDtoCopyWith<$Res>? get aiAnalysis;

}
/// @nodoc
class __$UserInterviewDtoCopyWithImpl<$Res>
    implements _$UserInterviewDtoCopyWith<$Res> {
  __$UserInterviewDtoCopyWithImpl(this._self, this._then);

  final _UserInterviewDto _self;
  final $Res Function(_UserInterviewDto) _then;

/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? recordingUrl = freezed,Object? userId = freezed,Object? metrics = freezed,Object? aiAnalysis = freezed,}) {
  return _then(_UserInterviewDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserInfoDto?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as UserInterviewMetricsDto?,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as UserInterviewAIAnalysisDto?,
  ));
}

/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoDtoCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UserInfoDtoCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewMetricsDtoCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $UserInterviewMetricsDtoCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of UserInterviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewAIAnalysisDtoCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $UserInterviewAIAnalysisDtoCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
}
}


/// @nodoc
mixin _$UserInfoDto {

 String get email; String get name;
/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoDtoCopyWith<UserInfoDto> get copyWith => _$UserInfoDtoCopyWithImpl<UserInfoDto>(this as UserInfoDto, _$identity);

  /// Serializes this UserInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoDto&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name);

@override
String toString() {
  return 'UserInfoDto(email: $email, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserInfoDtoCopyWith<$Res>  {
  factory $UserInfoDtoCopyWith(UserInfoDto value, $Res Function(UserInfoDto) _then) = _$UserInfoDtoCopyWithImpl;
@useResult
$Res call({
 String email, String name
});




}
/// @nodoc
class _$UserInfoDtoCopyWithImpl<$Res>
    implements $UserInfoDtoCopyWith<$Res> {
  _$UserInfoDtoCopyWithImpl(this._self, this._then);

  final UserInfoDto _self;
  final $Res Function(UserInfoDto) _then;

/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoDto].
extension UserInfoDtoPatterns on UserInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
return $default(_that.email,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String name)  $default,) {final _that = this;
switch (_that) {
case _UserInfoDto():
return $default(_that.email,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String name)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
return $default(_that.email,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoDto extends UserInfoDto {
  const _UserInfoDto({required this.email, required this.name}): super._();
  factory _UserInfoDto.fromJson(Map<String, dynamic> json) => _$UserInfoDtoFromJson(json);

@override final  String email;
@override final  String name;

/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoDtoCopyWith<_UserInfoDto> get copyWith => __$UserInfoDtoCopyWithImpl<_UserInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoDto&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name);

@override
String toString() {
  return 'UserInfoDto(email: $email, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserInfoDtoCopyWith<$Res> implements $UserInfoDtoCopyWith<$Res> {
  factory _$UserInfoDtoCopyWith(_UserInfoDto value, $Res Function(_UserInfoDto) _then) = __$UserInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 String email, String name
});




}
/// @nodoc
class __$UserInfoDtoCopyWithImpl<$Res>
    implements _$UserInfoDtoCopyWith<$Res> {
  __$UserInfoDtoCopyWithImpl(this._self, this._then);

  final _UserInfoDto _self;
  final $Res Function(_UserInfoDto) _then;

/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = null,}) {
  return _then(_UserInfoDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserInterviewMetricsDto {

 int get averagePace; int get totalWords; int get fillerCount; int get pauseCount;
/// Create a copy of UserInterviewMetricsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewMetricsDtoCopyWith<UserInterviewMetricsDto> get copyWith => _$UserInterviewMetricsDtoCopyWithImpl<UserInterviewMetricsDto>(this as UserInterviewMetricsDto, _$identity);

  /// Serializes this UserInterviewMetricsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewMetricsDto&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount);

@override
String toString() {
  return 'UserInterviewMetricsDto(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount)';
}


}

/// @nodoc
abstract mixin class $UserInterviewMetricsDtoCopyWith<$Res>  {
  factory $UserInterviewMetricsDtoCopyWith(UserInterviewMetricsDto value, $Res Function(UserInterviewMetricsDto) _then) = _$UserInterviewMetricsDtoCopyWithImpl;
@useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount
});




}
/// @nodoc
class _$UserInterviewMetricsDtoCopyWithImpl<$Res>
    implements $UserInterviewMetricsDtoCopyWith<$Res> {
  _$UserInterviewMetricsDtoCopyWithImpl(this._self, this._then);

  final UserInterviewMetricsDto _self;
  final $Res Function(UserInterviewMetricsDto) _then;

/// Create a copy of UserInterviewMetricsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,}) {
  return _then(_self.copyWith(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInterviewMetricsDto].
extension UserInterviewMetricsDtoPatterns on UserInterviewMetricsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewMetricsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewMetricsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewMetricsDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewMetricsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewMetricsDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewMetricsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterviewMetricsDto() when $default != null:
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount)  $default,) {final _that = this;
switch (_that) {
case _UserInterviewMetricsDto():
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int averagePace,  int totalWords,  int fillerCount,  int pauseCount)?  $default,) {final _that = this;
switch (_that) {
case _UserInterviewMetricsDto() when $default != null:
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInterviewMetricsDto extends UserInterviewMetricsDto {
  const _UserInterviewMetricsDto({required this.averagePace, required this.totalWords, required this.fillerCount, required this.pauseCount}): super._();
  factory _UserInterviewMetricsDto.fromJson(Map<String, dynamic> json) => _$UserInterviewMetricsDtoFromJson(json);

@override final  int averagePace;
@override final  int totalWords;
@override final  int fillerCount;
@override final  int pauseCount;

/// Create a copy of UserInterviewMetricsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewMetricsDtoCopyWith<_UserInterviewMetricsDto> get copyWith => __$UserInterviewMetricsDtoCopyWithImpl<_UserInterviewMetricsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInterviewMetricsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewMetricsDto&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount);

@override
String toString() {
  return 'UserInterviewMetricsDto(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewMetricsDtoCopyWith<$Res> implements $UserInterviewMetricsDtoCopyWith<$Res> {
  factory _$UserInterviewMetricsDtoCopyWith(_UserInterviewMetricsDto value, $Res Function(_UserInterviewMetricsDto) _then) = __$UserInterviewMetricsDtoCopyWithImpl;
@override @useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount
});




}
/// @nodoc
class __$UserInterviewMetricsDtoCopyWithImpl<$Res>
    implements _$UserInterviewMetricsDtoCopyWith<$Res> {
  __$UserInterviewMetricsDtoCopyWithImpl(this._self, this._then);

  final _UserInterviewMetricsDto _self;
  final $Res Function(_UserInterviewMetricsDto) _then;

/// Create a copy of UserInterviewMetricsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,}) {
  return _then(_UserInterviewMetricsDto(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$UserInterviewAIAnalysisDto {

 double get overallScore; String get summary; double get confidenceScore;
/// Create a copy of UserInterviewAIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewAIAnalysisDtoCopyWith<UserInterviewAIAnalysisDto> get copyWith => _$UserInterviewAIAnalysisDtoCopyWithImpl<UserInterviewAIAnalysisDto>(this as UserInterviewAIAnalysisDto, _$identity);

  /// Serializes this UserInterviewAIAnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewAIAnalysisDto&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,confidenceScore);

@override
String toString() {
  return 'UserInterviewAIAnalysisDto(overallScore: $overallScore, summary: $summary, confidenceScore: $confidenceScore)';
}


}

/// @nodoc
abstract mixin class $UserInterviewAIAnalysisDtoCopyWith<$Res>  {
  factory $UserInterviewAIAnalysisDtoCopyWith(UserInterviewAIAnalysisDto value, $Res Function(UserInterviewAIAnalysisDto) _then) = _$UserInterviewAIAnalysisDtoCopyWithImpl;
@useResult
$Res call({
 double overallScore, String summary, double confidenceScore
});




}
/// @nodoc
class _$UserInterviewAIAnalysisDtoCopyWithImpl<$Res>
    implements $UserInterviewAIAnalysisDtoCopyWith<$Res> {
  _$UserInterviewAIAnalysisDtoCopyWithImpl(this._self, this._then);

  final UserInterviewAIAnalysisDto _self;
  final $Res Function(UserInterviewAIAnalysisDto) _then;

/// Create a copy of UserInterviewAIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overallScore = null,Object? summary = null,Object? confidenceScore = null,}) {
  return _then(_self.copyWith(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInterviewAIAnalysisDto].
extension UserInterviewAIAnalysisDtoPatterns on UserInterviewAIAnalysisDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewAIAnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewAIAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewAIAnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewAIAnalysisDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewAIAnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewAIAnalysisDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double overallScore,  String summary,  double confidenceScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterviewAIAnalysisDto() when $default != null:
return $default(_that.overallScore,_that.summary,_that.confidenceScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double overallScore,  String summary,  double confidenceScore)  $default,) {final _that = this;
switch (_that) {
case _UserInterviewAIAnalysisDto():
return $default(_that.overallScore,_that.summary,_that.confidenceScore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double overallScore,  String summary,  double confidenceScore)?  $default,) {final _that = this;
switch (_that) {
case _UserInterviewAIAnalysisDto() when $default != null:
return $default(_that.overallScore,_that.summary,_that.confidenceScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInterviewAIAnalysisDto extends UserInterviewAIAnalysisDto {
  const _UserInterviewAIAnalysisDto({required this.overallScore, required this.summary, required this.confidenceScore}): super._();
  factory _UserInterviewAIAnalysisDto.fromJson(Map<String, dynamic> json) => _$UserInterviewAIAnalysisDtoFromJson(json);

@override final  double overallScore;
@override final  String summary;
@override final  double confidenceScore;

/// Create a copy of UserInterviewAIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewAIAnalysisDtoCopyWith<_UserInterviewAIAnalysisDto> get copyWith => __$UserInterviewAIAnalysisDtoCopyWithImpl<_UserInterviewAIAnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInterviewAIAnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewAIAnalysisDto&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,confidenceScore);

@override
String toString() {
  return 'UserInterviewAIAnalysisDto(overallScore: $overallScore, summary: $summary, confidenceScore: $confidenceScore)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewAIAnalysisDtoCopyWith<$Res> implements $UserInterviewAIAnalysisDtoCopyWith<$Res> {
  factory _$UserInterviewAIAnalysisDtoCopyWith(_UserInterviewAIAnalysisDto value, $Res Function(_UserInterviewAIAnalysisDto) _then) = __$UserInterviewAIAnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 double overallScore, String summary, double confidenceScore
});




}
/// @nodoc
class __$UserInterviewAIAnalysisDtoCopyWithImpl<$Res>
    implements _$UserInterviewAIAnalysisDtoCopyWith<$Res> {
  __$UserInterviewAIAnalysisDtoCopyWithImpl(this._self, this._then);

  final _UserInterviewAIAnalysisDto _self;
  final $Res Function(_UserInterviewAIAnalysisDto) _then;

/// Create a copy of UserInterviewAIAnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overallScore = null,Object? summary = null,Object? confidenceScore = null,}) {
  return _then(_UserInterviewAIAnalysisDto(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,
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
