import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_connection_params.freezed.dart';

/// Parameters for connecting to a LiveKit room
@freezed
sealed class RoomConnectionParams with _$RoomConnectionParams {
  const RoomConnectionParams._();

  const factory RoomConnectionParams({
    required String roomName,
    required String participantName,
  }) = _RoomConnectionParams;
}
