import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_dto.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

/// Data transfer object for authentication response from API
/// Used for login, signup, refresh, and upgrade responses
@freezed
sealed class AuthResponseDto with _$AuthResponseDto {
  const factory AuthResponseDto({
    required String accessToken,
    required String refreshToken,
    UserDto? user, // May not be present in refresh response
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}
