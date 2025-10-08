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

 String get id; String get status; String get createdAt; double get duration; String? get recordingUrl; UserInfo? get userId; UserInterviewMetrics? get metrics; UserInterviewAIAnalysis? get aiAnalysis;
/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewCopyWith<UserInterview> get copyWith => _$UserInterviewCopyWithImpl<UserInterview>(this as UserInterview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterview&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,recordingUrl,userId,metrics,aiAnalysis);

@override
String toString() {
  return 'UserInterview(id: $id, status: $status, createdAt: $createdAt, duration: $duration, recordingUrl: $recordingUrl, userId: $userId, metrics: $metrics, aiAnalysis: $aiAnalysis)';
}


}

/// @nodoc
abstract mixin class $UserInterviewCopyWith<$Res>  {
  factory $UserInterviewCopyWith(UserInterview value, $Res Function(UserInterview) _then) = _$UserInterviewCopyWithImpl;
@useResult
$Res call({
 String id, String status, String createdAt, double duration, String? recordingUrl, UserInfo? userId, UserInterviewMetrics? metrics, UserInterviewAIAnalysis? aiAnalysis
});


$UserInfoCopyWith<$Res>? get userId;$UserInterviewMetricsCopyWith<$Res>? get metrics;$UserInterviewAIAnalysisCopyWith<$Res>? get aiAnalysis;

}
/// @nodoc
class _$UserInterviewCopyWithImpl<$Res>
    implements $UserInterviewCopyWith<$Res> {
  _$UserInterviewCopyWithImpl(this._self, this._then);

  final UserInterview _self;
  final $Res Function(UserInterview) _then;

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? recordingUrl = freezed,Object? userId = freezed,Object? metrics = freezed,Object? aiAnalysis = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserInfo?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as UserInterviewMetrics?,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as UserInterviewAIAnalysis?,
  ));
}
/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UserInfoCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewMetricsCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $UserInterviewMetricsCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewAIAnalysisCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $UserInterviewAIAnalysisCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String createdAt,  double duration,  String? recordingUrl,  UserInfo? userId,  UserInterviewMetrics? metrics,  UserInterviewAIAnalysis? aiAnalysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterview() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String createdAt,  double duration,  String? recordingUrl,  UserInfo? userId,  UserInterviewMetrics? metrics,  UserInterviewAIAnalysis? aiAnalysis)  $default,) {final _that = this;
switch (_that) {
case _UserInterview():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String createdAt,  double duration,  String? recordingUrl,  UserInfo? userId,  UserInterviewMetrics? metrics,  UserInterviewAIAnalysis? aiAnalysis)?  $default,) {final _that = this;
switch (_that) {
case _UserInterview() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.duration,_that.recordingUrl,_that.userId,_that.metrics,_that.aiAnalysis);case _:
  return null;

}
}

}

/// @nodoc


class _UserInterview implements UserInterview {
  const _UserInterview({required this.id, required this.status, required this.createdAt, required this.duration, this.recordingUrl, this.userId, this.metrics, this.aiAnalysis});
  

@override final  String id;
@override final  String status;
@override final  String createdAt;
@override final  double duration;
@override final  String? recordingUrl;
@override final  UserInfo? userId;
@override final  UserInterviewMetrics? metrics;
@override final  UserInterviewAIAnalysis? aiAnalysis;

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewCopyWith<_UserInterview> get copyWith => __$UserInterviewCopyWithImpl<_UserInterview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterview&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.recordingUrl, recordingUrl) || other.recordingUrl == recordingUrl)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.aiAnalysis, aiAnalysis) || other.aiAnalysis == aiAnalysis));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,duration,recordingUrl,userId,metrics,aiAnalysis);

@override
String toString() {
  return 'UserInterview(id: $id, status: $status, createdAt: $createdAt, duration: $duration, recordingUrl: $recordingUrl, userId: $userId, metrics: $metrics, aiAnalysis: $aiAnalysis)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewCopyWith<$Res> implements $UserInterviewCopyWith<$Res> {
  factory _$UserInterviewCopyWith(_UserInterview value, $Res Function(_UserInterview) _then) = __$UserInterviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String createdAt, double duration, String? recordingUrl, UserInfo? userId, UserInterviewMetrics? metrics, UserInterviewAIAnalysis? aiAnalysis
});


@override $UserInfoCopyWith<$Res>? get userId;@override $UserInterviewMetricsCopyWith<$Res>? get metrics;@override $UserInterviewAIAnalysisCopyWith<$Res>? get aiAnalysis;

}
/// @nodoc
class __$UserInterviewCopyWithImpl<$Res>
    implements _$UserInterviewCopyWith<$Res> {
  __$UserInterviewCopyWithImpl(this._self, this._then);

  final _UserInterview _self;
  final $Res Function(_UserInterview) _then;

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? duration = null,Object? recordingUrl = freezed,Object? userId = freezed,Object? metrics = freezed,Object? aiAnalysis = freezed,}) {
  return _then(_UserInterview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,recordingUrl: freezed == recordingUrl ? _self.recordingUrl : recordingUrl // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserInfo?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as UserInterviewMetrics?,aiAnalysis: freezed == aiAnalysis ? _self.aiAnalysis : aiAnalysis // ignore: cast_nullable_to_non_nullable
as UserInterviewAIAnalysis?,
  ));
}

/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UserInfoCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewMetricsCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $UserInterviewMetricsCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of UserInterview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInterviewAIAnalysisCopyWith<$Res>? get aiAnalysis {
    if (_self.aiAnalysis == null) {
    return null;
  }

  return $UserInterviewAIAnalysisCopyWith<$Res>(_self.aiAnalysis!, (value) {
    return _then(_self.copyWith(aiAnalysis: value));
  });
}
}

/// @nodoc
mixin _$UserInfo {

 String get email; String get name;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCopyWith<UserInfo> get copyWith => _$UserInfoCopyWithImpl<UserInfo>(this as UserInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfo&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,name);

@override
String toString() {
  return 'UserInfo(email: $email, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserInfoCopyWith<$Res>  {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) _then) = _$UserInfoCopyWithImpl;
@useResult
$Res call({
 String email, String name
});




}
/// @nodoc
class _$UserInfoCopyWithImpl<$Res>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._self, this._then);

  final UserInfo _self;
  final $Res Function(UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfo].
extension UserInfoPatterns on UserInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfo value)  $default,){
final _that = this;
switch (_that) {
case _UserInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfo value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
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
case _UserInfo() when $default != null:
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
case _UserInfo():
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
case _UserInfo() when $default != null:
return $default(_that.email,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _UserInfo implements UserInfo {
  const _UserInfo({required this.email, required this.name});
  

@override final  String email;
@override final  String name;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoCopyWith<_UserInfo> get copyWith => __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfo&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,name);

@override
String toString() {
  return 'UserInfo(email: $email, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) _then) = __$UserInfoCopyWithImpl;
@override @useResult
$Res call({
 String email, String name
});




}
/// @nodoc
class __$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(this._self, this._then);

  final _UserInfo _self;
  final $Res Function(_UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = null,}) {
  return _then(_UserInfo(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserInterviewMetrics {

 int get averagePace; int get totalWords; int get fillerCount; int get pauseCount;
/// Create a copy of UserInterviewMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewMetricsCopyWith<UserInterviewMetrics> get copyWith => _$UserInterviewMetricsCopyWithImpl<UserInterviewMetrics>(this as UserInterviewMetrics, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewMetrics&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount));
}


@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount);

@override
String toString() {
  return 'UserInterviewMetrics(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount)';
}


}

/// @nodoc
abstract mixin class $UserInterviewMetricsCopyWith<$Res>  {
  factory $UserInterviewMetricsCopyWith(UserInterviewMetrics value, $Res Function(UserInterviewMetrics) _then) = _$UserInterviewMetricsCopyWithImpl;
@useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount
});




}
/// @nodoc
class _$UserInterviewMetricsCopyWithImpl<$Res>
    implements $UserInterviewMetricsCopyWith<$Res> {
  _$UserInterviewMetricsCopyWithImpl(this._self, this._then);

  final UserInterviewMetrics _self;
  final $Res Function(UserInterviewMetrics) _then;

/// Create a copy of UserInterviewMetrics
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


/// Adds pattern-matching-related methods to [UserInterviewMetrics].
extension UserInterviewMetricsPatterns on UserInterviewMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewMetrics value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewMetrics() when $default != null:
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
case _UserInterviewMetrics() when $default != null:
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
case _UserInterviewMetrics():
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
case _UserInterviewMetrics() when $default != null:
return $default(_that.averagePace,_that.totalWords,_that.fillerCount,_that.pauseCount);case _:
  return null;

}
}

}

/// @nodoc


class _UserInterviewMetrics implements UserInterviewMetrics {
  const _UserInterviewMetrics({required this.averagePace, required this.totalWords, required this.fillerCount, required this.pauseCount});
  

@override final  int averagePace;
@override final  int totalWords;
@override final  int fillerCount;
@override final  int pauseCount;

/// Create a copy of UserInterviewMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewMetricsCopyWith<_UserInterviewMetrics> get copyWith => __$UserInterviewMetricsCopyWithImpl<_UserInterviewMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewMetrics&&(identical(other.averagePace, averagePace) || other.averagePace == averagePace)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&(identical(other.fillerCount, fillerCount) || other.fillerCount == fillerCount)&&(identical(other.pauseCount, pauseCount) || other.pauseCount == pauseCount));
}


@override
int get hashCode => Object.hash(runtimeType,averagePace,totalWords,fillerCount,pauseCount);

@override
String toString() {
  return 'UserInterviewMetrics(averagePace: $averagePace, totalWords: $totalWords, fillerCount: $fillerCount, pauseCount: $pauseCount)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewMetricsCopyWith<$Res> implements $UserInterviewMetricsCopyWith<$Res> {
  factory _$UserInterviewMetricsCopyWith(_UserInterviewMetrics value, $Res Function(_UserInterviewMetrics) _then) = __$UserInterviewMetricsCopyWithImpl;
@override @useResult
$Res call({
 int averagePace, int totalWords, int fillerCount, int pauseCount
});




}
/// @nodoc
class __$UserInterviewMetricsCopyWithImpl<$Res>
    implements _$UserInterviewMetricsCopyWith<$Res> {
  __$UserInterviewMetricsCopyWithImpl(this._self, this._then);

  final _UserInterviewMetrics _self;
  final $Res Function(_UserInterviewMetrics) _then;

/// Create a copy of UserInterviewMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? averagePace = null,Object? totalWords = null,Object? fillerCount = null,Object? pauseCount = null,}) {
  return _then(_UserInterviewMetrics(
averagePace: null == averagePace ? _self.averagePace : averagePace // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,fillerCount: null == fillerCount ? _self.fillerCount : fillerCount // ignore: cast_nullable_to_non_nullable
as int,pauseCount: null == pauseCount ? _self.pauseCount : pauseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$UserInterviewAIAnalysis {

 double get overallScore; String get summary; double get confidenceScore;
/// Create a copy of UserInterviewAIAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewAIAnalysisCopyWith<UserInterviewAIAnalysis> get copyWith => _$UserInterviewAIAnalysisCopyWithImpl<UserInterviewAIAnalysis>(this as UserInterviewAIAnalysis, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewAIAnalysis&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore));
}


@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,confidenceScore);

@override
String toString() {
  return 'UserInterviewAIAnalysis(overallScore: $overallScore, summary: $summary, confidenceScore: $confidenceScore)';
}


}

/// @nodoc
abstract mixin class $UserInterviewAIAnalysisCopyWith<$Res>  {
  factory $UserInterviewAIAnalysisCopyWith(UserInterviewAIAnalysis value, $Res Function(UserInterviewAIAnalysis) _then) = _$UserInterviewAIAnalysisCopyWithImpl;
@useResult
$Res call({
 double overallScore, String summary, double confidenceScore
});




}
/// @nodoc
class _$UserInterviewAIAnalysisCopyWithImpl<$Res>
    implements $UserInterviewAIAnalysisCopyWith<$Res> {
  _$UserInterviewAIAnalysisCopyWithImpl(this._self, this._then);

  final UserInterviewAIAnalysis _self;
  final $Res Function(UserInterviewAIAnalysis) _then;

/// Create a copy of UserInterviewAIAnalysis
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


/// Adds pattern-matching-related methods to [UserInterviewAIAnalysis].
extension UserInterviewAIAnalysisPatterns on UserInterviewAIAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewAIAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewAIAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewAIAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewAIAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewAIAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewAIAnalysis() when $default != null:
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
case _UserInterviewAIAnalysis() when $default != null:
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
case _UserInterviewAIAnalysis():
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
case _UserInterviewAIAnalysis() when $default != null:
return $default(_that.overallScore,_that.summary,_that.confidenceScore);case _:
  return null;

}
}

}

/// @nodoc


class _UserInterviewAIAnalysis implements UserInterviewAIAnalysis {
  const _UserInterviewAIAnalysis({required this.overallScore, required this.summary, required this.confidenceScore});
  

@override final  double overallScore;
@override final  String summary;
@override final  double confidenceScore;

/// Create a copy of UserInterviewAIAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewAIAnalysisCopyWith<_UserInterviewAIAnalysis> get copyWith => __$UserInterviewAIAnalysisCopyWithImpl<_UserInterviewAIAnalysis>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewAIAnalysis&&(identical(other.overallScore, overallScore) || other.overallScore == overallScore)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore));
}


@override
int get hashCode => Object.hash(runtimeType,overallScore,summary,confidenceScore);

@override
String toString() {
  return 'UserInterviewAIAnalysis(overallScore: $overallScore, summary: $summary, confidenceScore: $confidenceScore)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewAIAnalysisCopyWith<$Res> implements $UserInterviewAIAnalysisCopyWith<$Res> {
  factory _$UserInterviewAIAnalysisCopyWith(_UserInterviewAIAnalysis value, $Res Function(_UserInterviewAIAnalysis) _then) = __$UserInterviewAIAnalysisCopyWithImpl;
@override @useResult
$Res call({
 double overallScore, String summary, double confidenceScore
});




}
/// @nodoc
class __$UserInterviewAIAnalysisCopyWithImpl<$Res>
    implements _$UserInterviewAIAnalysisCopyWith<$Res> {
  __$UserInterviewAIAnalysisCopyWithImpl(this._self, this._then);

  final _UserInterviewAIAnalysis _self;
  final $Res Function(_UserInterviewAIAnalysis) _then;

/// Create a copy of UserInterviewAIAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overallScore = null,Object? summary = null,Object? confidenceScore = null,}) {
  return _then(_UserInterviewAIAnalysis(
overallScore: null == overallScore ? _self.overallScore : overallScore // ignore: cast_nullable_to_non_nullable
as double,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,
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
