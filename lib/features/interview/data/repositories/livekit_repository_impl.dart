import 'package:dartz/dartz.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/runner/service_runner.dart';
import '../../domain/repositories/livekit_repository.dart';
import '../datasources/livekit_remote_datasource.dart';
import '../models/room_connection_params.dart';

part 'livekit_repository_impl.g.dart';

@riverpod
LiveKitRepository liveKitRepository(Ref ref) {
  return LiveKitRepositoryImpl(ref);
}

/// Implementation of LiveKitRepository
class LiveKitRepositoryImpl extends ServiceRunner implements LiveKitRepository {
  final LiveKitRemoteDataSource _remoteDataSource;

  LiveKitRepositoryImpl(Ref ref)
      : _remoteDataSource = ref.read(liveKitRemoteDataSourceProvider),
        super(ref.read(networkInfoProvider));

  @override
  Future<Either<Failure, String>> getToken(RoomConnectionParams params) {
    return run(
      () async {
        final dto = await _remoteDataSource.getToken(params);
        return dto.token;
      },
      errorTitle: 'Token Request Failed',
    );
  }

  @override
  Future<Either<Failure, Room>> connectToRoom(String token) {
    return run(
      () => _remoteDataSource.connectToRoom(token),
      errorTitle: 'Connection Failed',
    );
  }

  @override
  Future<Either<Failure, LocalVideoTrack?>> enableCamera(
    LocalParticipant? participant,
  ) {
    return run(
      () => _remoteDataSource.enableCamera(participant),
      errorTitle: 'Camera Error',
    );
  }

  @override
  Future<Either<Failure, Unit>> enableMicrophone(
    LocalParticipant? participant,
  ) {
    return run(
      () async {
        await _remoteDataSource.enableMicrophone(participant);
        return unit;
      },
      errorTitle: 'Microphone Error',
    );
  }

  @override
  Future<Either<Failure, Unit>> disconnect(Room? room) async {
    if (room == null) {
      return right(unit);
    }

    try {
      await room.disconnect();
      return right(unit);
    } catch (e) {
      return left(Failure.connection(
          message: 'Failed to disconnect: ${e.toString()}'));
    }
  }
}
