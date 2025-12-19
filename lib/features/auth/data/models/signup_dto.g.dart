// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupDto _$SignupDtoFromJson(Map<String, dynamic> json) => _SignupDto(
  email: json['email'] as String,
  name: json['name'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$SignupDtoToJson(_SignupDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };
