import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_request.dart';
import '../../../../core/network/network_retry.dart';
import '../models/room_connection_params.dart';
import '../models/token_response_dto.dart';

part 'livekit_remote_datasource.g.dart';

@riverpod
LiveKitRemoteDataSource liveKitRemoteDataSource(Ref ref) {
  return LiveKitRemoteDataSourceImpl(
    networkRequest: ref.watch(networkRequestProvider),
    networkRetry: ref.watch(networkRetryProvider),
  );
}

abstract class LiveKitRemoteDataSource {
  Future<TokenResponseDto> getToken(RoomConnectionParams params);

  Future<Room> connectToRoom(String token, String url);

  Future<LocalVideoTrack?> enableCamera(LocalParticipant? participant);

  Future<void> enableMicrophone(LocalParticipant? participant);
}

class LiveKitRemoteDataSourceImpl implements LiveKitRemoteDataSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  LiveKitRemoteDataSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<TokenResponseDto> getToken(RoomConnectionParams params) async {
    final url = Endpoints.getLiveKitToken();

    final response = await networkRetry.networkRetry(
      () => networkRequest.post(
        url,
        body: {
          'roomName': params.roomName,
          'participantName': params.participantName,
        },
      ),
    );

    if (!response.isSuccess) {
      throw ServerException(
        'Token request failed with status ${response.statusCode}',
      );
    }

    return TokenResponseDto.fromJson(response.data);
  }

  @override
  Future<Room> connectToRoom(String token, String url) async {
    try {
      final roomOptions = RoomOptions(adaptiveStream: true, dynacast: true);

      final room = Room(roomOptions: roomOptions);
      await room.connect(url, token);
      return room;
    } catch (e) {
      throw ServerException('Failed to connect to LiveKit: ${e.toString()}');
    }
  }

  @override
  Future<LocalVideoTrack?> enableCamera(LocalParticipant? participant) async {
    if (participant == null) {
      throw const ServerException('No participant available');
    }

    try {
      await participant.setCameraEnabled(true);

      final localVideoTrack = participant.videoTrackPublications
          .where((pub) => pub.track != null)
          .map((pub) => pub.track as LocalVideoTrack)
          .firstOrNull;

      return localVideoTrack;
    } catch (e) {
      throw ServerException('Camera unavailable: ${e.toString()}');
    }
  }

  @override
  Future<void> enableMicrophone(LocalParticipant? participant) async {
    if (participant == null) {
      throw const ServerException('No participant available');
    }

    try {
      await participant.setMicrophoneEnabled(true);
    } catch (e) {
      throw ServerException('Microphone unavailable: ${e.toString()}');
    }
  }
}
