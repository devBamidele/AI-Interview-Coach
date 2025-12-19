import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_dto.freezed.dart';
part 'refresh_token_dto.g.dart';

/// Data transfer object for refresh token request
@freezed
sealed class RefreshTokenDto with _$RefreshTokenDto {
  const factory RefreshTokenDto({required String refreshToken}) =
      _RefreshTokenDto;

  factory RefreshTokenDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDtoFromJson(json);
}
