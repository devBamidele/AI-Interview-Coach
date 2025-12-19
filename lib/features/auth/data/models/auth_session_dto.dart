import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_session.dart';
import 'user_dto.dart';

part 'auth_session_dto.freezed.dart';
part 'auth_session_dto.g.dart';

/// Data transfer object for AuthSession from API
@freezed
sealed class AuthSessionDto with _$AuthSessionDto {
  const AuthSessionDto._();

  const factory AuthSessionDto({
    required String accessToken,
    required String refreshToken,
    required UserDto user,
    String? expiresAt,
  }) = _AuthSessionDto;

  factory AuthSessionDto.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionDtoFromJson(json);

  /// Convert DTO to domain entity
  AuthSession toEntity() => AuthSession(
    accessToken: accessToken,
    refreshToken: refreshToken,
    user: user.toEntity(),
    expiresAt: expiresAt != null ? DateTime.parse(expiresAt!) : null,
  );

  /// Create DTO from domain entity (for local storage)
  factory AuthSessionDto.fromEntity(AuthSession session) => AuthSessionDto(
    accessToken: session.accessToken,
    refreshToken: session.refreshToken,
    user: UserDto(
      id: session.user.id,
      email: session.user.email,
      name: session.user.name,
      createdAt: session.user.createdAt?.toIso8601String(),
    ),
    expiresAt: session.expiresAt?.toIso8601String(),
  );
}
