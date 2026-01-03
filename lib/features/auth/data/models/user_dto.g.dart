// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: json['id'] as String,
  email: json['email'] as String?,
  name: json['name'] as String,
  participantIdentity: json['participantIdentity'] as String?,
  userType: json['userType'] as String?,
  createdAt: json['createdAt'] as String?,
  metadata: json['metadata'] == null
      ? null
      : UserMetadataDto.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'participantIdentity': instance.participantIdentity,
  'userType': instance.userType,
  'createdAt': instance.createdAt,
  'metadata': instance.metadata,
};
