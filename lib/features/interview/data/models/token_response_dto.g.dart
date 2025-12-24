// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenResponseDto _$TokenResponseDtoFromJson(Map<String, dynamic> json) =>
    _TokenResponseDto(
      livekitToken: json['livekitToken'] as String,
      transcriptionToken: json['transcriptionToken'] as String,
      url: json['url'] as String,
      roomName: json['roomName'] as String,
      participantIdentity: json['participantIdentity'] as String,
    );

Map<String, dynamic> _$TokenResponseDtoToJson(_TokenResponseDto instance) =>
    <String, dynamic>{
      'livekitToken': instance.livekitToken,
      'transcriptionToken': instance.transcriptionToken,
      'url': instance.url,
      'roomName': instance.roomName,
      'participantIdentity': instance.participantIdentity,
    };
