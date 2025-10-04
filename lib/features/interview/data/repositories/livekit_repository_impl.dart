import 'package:ai_interview_mvp/features/interview/data/models/token_response_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failures.dart';
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
  Future<Either<Failure, TokenResponseDto>> getToken(
    RoomConnectionParams params,
  ) {
    return run(
      () => _remoteDataSource.getToken(params),
      errorTitle: 'Token Request Failed',
    );
  }

  @override
  Future<Either<Failure, Room>> connectToRoom(String token, String url) {
    return run(
      () => _remoteDataSource.connectToRoom(token, url),
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
  Future<Either<Failure, void>> enableMicrophone(
    LocalParticipant? participant,
  ) {
    return run(
      () => _remoteDataSource.enableMicrophone(participant),
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
      return left(NetworkFailure('Failed to disconnect: ${e.toString()}'));
    }
  }
}
