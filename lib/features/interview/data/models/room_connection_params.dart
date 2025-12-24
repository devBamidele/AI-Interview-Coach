import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_connection_params.freezed.dart';

/// Parameters for connecting to a LiveKit room
/// Note: roomName is NO LONGER sent to backend - server generates it
/// This model is simplified to only contain participantName
@freezed
sealed class RoomConnectionParams with _$RoomConnectionParams {
  const RoomConnectionParams._();

  const factory RoomConnectionParams({
    required String participantName,
    // Optional interview type for backend to use in room name generation
    String? interviewType,
  }) = _RoomConnectionParams;
}
