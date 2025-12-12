// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_quality_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkQualityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkQualityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkQualityState()';
}


}

/// @nodoc
class $NetworkQualityStateCopyWith<$Res>  {
$NetworkQualityStateCopyWith(NetworkQualityState _, $Res Function(NetworkQualityState) __);
}


/// Adds pattern-matching-related methods to [NetworkQualityState].
extension NetworkQualityStatePatterns on NetworkQualityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Disconnected value)?  disconnected,TResult Function( Monitoring value)?  monitoring,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected(_that);case Monitoring() when monitoring != null:
return monitoring(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Disconnected value)  disconnected,required TResult Function( Monitoring value)  monitoring,}){
final _that = this;
switch (_that) {
case Disconnected():
return disconnected(_that);case Monitoring():
return monitoring(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Disconnected value)?  disconnected,TResult? Function( Monitoring value)?  monitoring,}){
final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected(_that);case Monitoring() when monitoring != null:
return monitoring(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  disconnected,TResult Function( NetworkQualityLevel level,  ConnectivityResult connectionType,  int? latencyMs)?  monitoring,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected();case Monitoring() when monitoring != null:
return monitoring(_that.level,_that.connectionType,_that.latencyMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  disconnected,required TResult Function( NetworkQualityLevel level,  ConnectivityResult connectionType,  int? latencyMs)  monitoring,}) {final _that = this;
switch (_that) {
case Disconnected():
return disconnected();case Monitoring():
return monitoring(_that.level,_that.connectionType,_that.latencyMs);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  disconnected,TResult? Function( NetworkQualityLevel level,  ConnectivityResult connectionType,  int? latencyMs)?  monitoring,}) {final _that = this;
switch (_that) {
case Disconnected() when disconnected != null:
return disconnected();case Monitoring() when monitoring != null:
return monitoring(_that.level,_that.connectionType,_that.latencyMs);case _:
  return null;

}
}

}

/// @nodoc


class Disconnected implements NetworkQualityState {
  const Disconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Disconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkQualityState.disconnected()';
}


}




/// @nodoc


class Monitoring implements NetworkQualityState {
  const Monitoring({required this.level, required this.connectionType, this.latencyMs});
  

 final  NetworkQualityLevel level;
 final  ConnectivityResult connectionType;
 final  int? latencyMs;

/// Create a copy of NetworkQualityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonitoringCopyWith<Monitoring> get copyWith => _$MonitoringCopyWithImpl<Monitoring>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Monitoring&&(identical(other.level, level) || other.level == level)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.latencyMs, latencyMs) || other.latencyMs == latencyMs));
}


@override
int get hashCode => Object.hash(runtimeType,level,connectionType,latencyMs);

@override
String toString() {
  return 'NetworkQualityState.monitoring(level: $level, connectionType: $connectionType, latencyMs: $latencyMs)';
}


}

/// @nodoc
abstract mixin class $MonitoringCopyWith<$Res> implements $NetworkQualityStateCopyWith<$Res> {
  factory $MonitoringCopyWith(Monitoring value, $Res Function(Monitoring) _then) = _$MonitoringCopyWithImpl;
@useResult
$Res call({
 NetworkQualityLevel level, ConnectivityResult connectionType, int? latencyMs
});




}
/// @nodoc
class _$MonitoringCopyWithImpl<$Res>
    implements $MonitoringCopyWith<$Res> {
  _$MonitoringCopyWithImpl(this._self, this._then);

  final Monitoring _self;
  final $Res Function(Monitoring) _then;

/// Create a copy of NetworkQualityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? level = null,Object? connectionType = null,Object? latencyMs = freezed,}) {
  return _then(Monitoring(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as NetworkQualityLevel,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectivityResult,latencyMs: freezed == latencyMs ? _self.latencyMs : latencyMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
