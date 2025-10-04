import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_dto.freezed.dart';
part 'token_response_dto.g.dart';

/// Data Transfer Object for LiveKit token response
@freezed
sealed class TokenResponseDto with _$TokenResponseDto {
  const factory TokenResponseDto({required String token, required String url}) =
      _TokenResponseDto;

  factory TokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseDtoFromJson(json);
}
