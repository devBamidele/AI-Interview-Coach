import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_dto.freezed.dart';
part 'token_response_dto.g.dart';

/// Data Transfer Object for LiveKit token response
/// Updated to include transcription token and server-generated room info
@freezed
sealed class TokenResponseDto with _$TokenResponseDto {
  const factory TokenResponseDto({
    /// LiveKit access token for room connection
    required String livekitToken,

    /// JWT token for transcription service WebSocket authentication
    required String transcriptionToken,

    /// LiveKit server URL
    required String url,

    /// Server-generated room name (MUST be used exactly as provided)
    required String roomName,

    /// Server-generated participant identity (MUST be used exactly as provided)
    required String participantIdentity,
  }) = _TokenResponseDto;

  factory TokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseDtoFromJson(json);
}
