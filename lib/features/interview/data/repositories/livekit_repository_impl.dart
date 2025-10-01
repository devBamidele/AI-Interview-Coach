import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/livekit_repository.dart';
import '../datasources/livekit_remote_datasource.dart';

part 'livekit_repository_impl.g.dart';

@riverpod
LiveKitRepository liveKitRepository(Ref ref) {
  return LiveKitRepositoryImpl(
    remoteDataSource: ref.watch(liveKitRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

/// Implementation of LiveKitRepository
class LiveKitRepositoryImpl implements LiveKitRepository {
  final LiveKitRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  LiveKitRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> getToken({
    required String roomName,
    required String participantName,
  }) async {
    if (!await networkInfo.isConnected) {
      return left(const Failure.network(message: 'No internet connection'));
    }

    try {
      final dto = await remoteDataSource.getToken(
        roomName: roomName,
        participantName: participantName,
      );
      log('Token received successfully');
      return right(dto.token);
    } on ServerException catch (e) {
      log('Server error: $e');
      return left(Failure.token(message: e.message));
    } on SocketException {
      log('Network error: Socket exception');
      return left(const Failure.network(
          message:
              'Could not reach token server. Please check your internet connection.'));
    } catch (e) {
      log('Unexpected error fetching token: $e');
      return left(Failure.token(message: 'Unexpected error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Room>> connectToRoom(String token) async {
    if (!await networkInfo.isConnected) {
      return left(const Failure.network(message: 'No internet connection'));
    }

    try {
      final room = await remoteDataSource.connectToRoom(token);
      log('Connected to LiveKit room');
      return right(room);
    } on ServerException catch (e) {
      log('Connection error: $e');
      return left(Failure.connection(message: e.message));
    } catch (e) {
      log('Unexpected connection error: $e');
      return left(Failure.connection(
          message: 'Failed to connect to LiveKit: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, LocalVideoTrack?>> enableCamera(
    LocalParticipant? participant,
  ) async {
    try {
      final videoTrack = await remoteDataSource.enableCamera(participant);
      log('Camera enabled successfully');
      return right(videoTrack);
    } on ServerException catch (e) {
      log('Camera error: $e');
      return left(Failure.mediaDevice(message: e.message));
    } catch (e) {
      log('Unexpected camera error: $e');
      return left(Failure.mediaDevice(
          message: 'Camera unavailable: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> enableMicrophone(
    LocalParticipant? participant,
  ) async {
    try {
      await remoteDataSource.enableMicrophone(participant);
      log('Microphone enabled successfully');
      return right(unit);
    } on ServerException catch (e) {
      log('Microphone error: $e');
      return left(Failure.mediaDevice(message: e.message));
    } catch (e) {
      log('Unexpected microphone error: $e');
      return left(Failure.mediaDevice(
          message: 'Microphone unavailable: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> disconnect(Room? room) async {
    if (room == null) {
      return right(unit);
    }

    try {
      log('Disconnecting from room...');
      await room.disconnect();
      log('Disconnected successfully');
      return right(unit);
    } catch (e) {
      log('Error disconnecting: $e');
      return left(Failure.connection(
          message: 'Failed to disconnect: ${e.toString()}'));
    }
  }
}
