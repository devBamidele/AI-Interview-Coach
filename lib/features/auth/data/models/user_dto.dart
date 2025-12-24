import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// Data transfer object for User from API
/// Supports both authenticated and anonymous users
@freezed
sealed class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String id,
    String? email, // Optional - null for anonymous users
    required String name,
    String? participantIdentity, // For anonymous users
    String? userType, // "authenticated" or "anonymous"
    String? createdAt,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// Convert DTO to domain entity
  User toEntity() => User(
    id: id,
    email: email,
    name: name,
    participantIdentity: participantIdentity,
    userType: userType,
    createdAt: createdAt != null ? DateTime.parse(createdAt!) : null,
  );
}
