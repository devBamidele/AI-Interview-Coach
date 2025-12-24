// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenResponseDto {

/// LiveKit access token for room connection
 String get livekitToken;/// JWT token for transcription service WebSocket authentication
 String get transcriptionToken;/// LiveKit server URL
 String get url;/// Server-generated room name (MUST be used exactly as provided)
 String get roomName;/// Server-generated participant identity (MUST be used exactly as provided)
 String get participantIdentity;
/// Create a copy of TokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenResponseDtoCopyWith<TokenResponseDto> get copyWith => _$TokenResponseDtoCopyWithImpl<TokenResponseDto>(this as TokenResponseDto, _$identity);

  /// Serializes this TokenResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenResponseDto&&(identical(other.livekitToken, livekitToken) || other.livekitToken == livekitToken)&&(identical(other.transcriptionToken, transcriptionToken) || other.transcriptionToken == transcriptionToken)&&(identical(other.url, url) || other.url == url)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.participantIdentity, participantIdentity) || other.participantIdentity == participantIdentity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,livekitToken,transcriptionToken,url,roomName,participantIdentity);

@override
String toString() {
  return 'TokenResponseDto(livekitToken: $livekitToken, transcriptionToken: $transcriptionToken, url: $url, roomName: $roomName, participantIdentity: $participantIdentity)';
}


}

/// @nodoc
abstract mixin class $TokenResponseDtoCopyWith<$Res>  {
  factory $TokenResponseDtoCopyWith(TokenResponseDto value, $Res Function(TokenResponseDto) _then) = _$TokenResponseDtoCopyWithImpl;
@useResult
$Res call({
 String livekitToken, String transcriptionToken, String url, String roomName, String participantIdentity
});




}
/// @nodoc
class _$TokenResponseDtoCopyWithImpl<$Res>
    implements $TokenResponseDtoCopyWith<$Res> {
  _$TokenResponseDtoCopyWithImpl(this._self, this._then);

  final TokenResponseDto _self;
  final $Res Function(TokenResponseDto) _then;

/// Create a copy of TokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? livekitToken = null,Object? transcriptionToken = null,Object? url = null,Object? roomName = null,Object? participantIdentity = null,}) {
  return _then(_self.copyWith(
livekitToken: null == livekitToken ? _self.livekitToken : livekitToken // ignore: cast_nullable_to_non_nullable
as String,transcriptionToken: null == transcriptionToken ? _self.transcriptionToken : transcriptionToken // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,participantIdentity: null == participantIdentity ? _self.participantIdentity : participantIdentity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenResponseDto].
extension TokenResponseDtoPatterns on TokenResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TokenResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TokenResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String livekitToken,  String transcriptionToken,  String url,  String roomName,  String participantIdentity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenResponseDto() when $default != null:
return $default(_that.livekitToken,_that.transcriptionToken,_that.url,_that.roomName,_that.participantIdentity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String livekitToken,  String transcriptionToken,  String url,  String roomName,  String participantIdentity)  $default,) {final _that = this;
switch (_that) {
case _TokenResponseDto():
return $default(_that.livekitToken,_that.transcriptionToken,_that.url,_that.roomName,_that.participantIdentity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String livekitToken,  String transcriptionToken,  String url,  String roomName,  String participantIdentity)?  $default,) {final _that = this;
switch (_that) {
case _TokenResponseDto() when $default != null:
return $default(_that.livekitToken,_that.transcriptionToken,_that.url,_that.roomName,_that.participantIdentity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenResponseDto implements TokenResponseDto {
  const _TokenResponseDto({required this.livekitToken, required this.transcriptionToken, required this.url, required this.roomName, required this.participantIdentity});
  factory _TokenResponseDto.fromJson(Map<String, dynamic> json) => _$TokenResponseDtoFromJson(json);

/// LiveKit access token for room connection
@override final  String livekitToken;
/// JWT token for transcription service WebSocket authentication
@override final  String transcriptionToken;
/// LiveKit server URL
@override final  String url;
/// Server-generated room name (MUST be used exactly as provided)
@override final  String roomName;
/// Server-generated participant identity (MUST be used exactly as provided)
@override final  String participantIdentity;

/// Create a copy of TokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenResponseDtoCopyWith<_TokenResponseDto> get copyWith => __$TokenResponseDtoCopyWithImpl<_TokenResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenResponseDto&&(identical(other.livekitToken, livekitToken) || other.livekitToken == livekitToken)&&(identical(other.transcriptionToken, transcriptionToken) || other.transcriptionToken == transcriptionToken)&&(identical(other.url, url) || other.url == url)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.participantIdentity, participantIdentity) || other.participantIdentity == participantIdentity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,livekitToken,transcriptionToken,url,roomName,participantIdentity);

@override
String toString() {
  return 'TokenResponseDto(livekitToken: $livekitToken, transcriptionToken: $transcriptionToken, url: $url, roomName: $roomName, participantIdentity: $participantIdentity)';
}


}

/// @nodoc
abstract mixin class _$TokenResponseDtoCopyWith<$Res> implements $TokenResponseDtoCopyWith<$Res> {
  factory _$TokenResponseDtoCopyWith(_TokenResponseDto value, $Res Function(_TokenResponseDto) _then) = __$TokenResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String livekitToken, String transcriptionToken, String url, String roomName, String participantIdentity
});




}
/// @nodoc
class __$TokenResponseDtoCopyWithImpl<$Res>
    implements _$TokenResponseDtoCopyWith<$Res> {
  __$TokenResponseDtoCopyWithImpl(this._self, this._then);

  final _TokenResponseDto _self;
  final $Res Function(_TokenResponseDto) _then;

/// Create a copy of TokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? livekitToken = null,Object? transcriptionToken = null,Object? url = null,Object? roomName = null,Object? participantIdentity = null,}) {
  return _then(_TokenResponseDto(
livekitToken: null == livekitToken ? _self.livekitToken : livekitToken // ignore: cast_nullable_to_non_nullable
as String,transcriptionToken: null == transcriptionToken ? _self.transcriptionToken : transcriptionToken // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,participantIdentity: null == participantIdentity ? _self.participantIdentity : participantIdentity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
