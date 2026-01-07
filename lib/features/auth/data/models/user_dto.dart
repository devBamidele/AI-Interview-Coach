import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import 'user_metadata_dto.dart';

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
    String? profilePicture, // Google profile picture URL - optional
    String? participantIdentity, // For anonymous users
    String? userType, // "authenticated" or "anonymous"
    String? createdAt,
    UserMetadataDto? metadata, // User metadata including consent status
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// Convert DTO to domain entity
  User toEntity() => User(
        id: id,
        email: email,
        name: name,
        profilePicture: profilePicture,
        participantIdentity: participantIdentity,
        userType: userType,
        createdAt: createdAt != null ? DateTime.parse(createdAt!) : null,
        metadata: metadata?.toEntity(),
      );
}
