import 'package:dartz/dartz.dart';
import 'package:livekit_client/livekit_client.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/room_connection_params.dart';
import '../../data/models/token_response_dto.dart';

/// Repository interface for LiveKit operations
abstract class LiveKitRepository {
  /// Fetches an authentication token for the specified room and participant
  Future<Either<Failure, TokenResponseDto>> getToken(
    RoomConnectionParams params,
  );

  /// Connects to a LiveKit room with the provided token
  Future<Either<Failure, Room>> connectToRoom(String token);

  /// Enables the camera and returns the video track
  Future<Either<Failure, LocalVideoTrack?>> enableCamera(
    LocalParticipant? participant,
  );

  /// Enables the microphone
  Future<Either<Failure, void>> enableMicrophone(LocalParticipant? participant);

  /// Disconnects from the current room
  Future<Either<Failure, Unit>> disconnect(Room? room);
}
