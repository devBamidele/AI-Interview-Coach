import 'dart:developer' as developer;

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_request.dart';
import '../models/auth_response_dto.dart';
import '../models/login_dto.dart';
import '../models/refresh_token_dto.dart';
import '../models/signup_dto.dart';
import '../models/user_dto.dart';
import '../models/user_metadata_dto.dart';

part 'auth_remote_datasource.g.dart';

@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
  );
}

abstract class AuthRemoteDataSource {
  Future<AuthResponseDto> login(LoginDto loginDto);
  Future<AuthResponseDto> signup(SignupDto signupDto);
  Future<AuthResponseDto> loginWithGoogle(String idToken);
  Future<AuthResponseDto> signUpWithGoogle(String idToken);
  Future<AuthResponseDto> upgradeAnonymousWithGoogle(
    String participantIdentity,
    String googleAuthCode,
  );
  Future<AuthResponseDto> refreshToken(RefreshTokenDto refreshDto);
  Future<void> logout(String? refreshToken);
  Future<AuthResponseDto> createAnonymousSession(String deviceId);
  Future<UserDto> updateUserMetadata(UserMetadataDto metadata);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final NetworkRequest networkRequest;

  AuthRemoteDataSourceImpl({required this.networkRequest});

  @override
  Future<AuthResponseDto> login(LoginDto loginDto) async {
    final response = await networkRequest.post(
      Endpoints.login,
      body: loginDto.toJson(),
    );

    if (!response.isSuccess) {
      final message = response.data is Map
          ? (response.data['message'] ?? 'Login failed')
          : 'Login failed';
      throw ServerException(message);
    }

    return AuthResponseDto.fromJson(response.data);
  }

  @override
  Future<AuthResponseDto> signup(SignupDto signupDto) async {
    final response = await networkRequest.post(
      Endpoints.signup,
      body: signupDto.toJson(),
    );

    if (!response.isSuccess) {
      final message = response.data is Map
          ? (response.data['message'] ?? 'Signup failed')
          : 'Signup failed';
      throw ServerException(message);
    }

    return AuthResponseDto.fromJson(response.data);
  }

  @override
  Future<AuthResponseDto> refreshToken(RefreshTokenDto refreshDto) async {
    final response = await networkRequest.post(
      Endpoints.refreshToken,
      body: refreshDto.toJson(),
    );

    if (!response.isSuccess) {
      throw ServerException('Token refresh failed');
    }

    return AuthResponseDto.fromJson(response.data);
  }

  @override
  Future<void> logout(String? refreshToken) async {
    final response = await networkRequest.post(
      Endpoints.logout,
      body: refreshToken != null ? {'refreshToken': refreshToken} : null,
    );

    if (!response.isSuccess) {
      throw ServerException('Logout failed');
    }
  }

  @override
  Future<AuthResponseDto> loginWithGoogle(String idToken) async {
    try {
      final response = await networkRequest.post(
        Endpoints.googleAuth,
        body: {
          'idToken': idToken,
          'action': 'login',
        },
      );

      if (!response.isSuccess) {
        final message = response.data is Map
            ? (response.data['message'] ?? 'Google login failed')
            : 'Google login failed';
        developer.log(
          '❌ Google login API failed: $message',
          name: 'auth_remote_datasource',
        );
        throw ServerException(message);
      }

      return AuthResponseDto.fromJson(response.data);
    } catch (e, stackTrace) {
      developer.log(
        '❌ Exception during Google login API call',
        name: 'auth_remote_datasource',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  @override
  Future<AuthResponseDto> signUpWithGoogle(String idToken) async {
    try {
      final response = await networkRequest.post(
        Endpoints.googleAuth,
        body: {
          'idToken': idToken,
          'action': 'signup',
        },
      );

      if (!response.isSuccess) {
        final message = response.data is Map
            ? (response.data['message'] ?? 'Google signup failed')
            : 'Google signup failed';
        developer.log(
          '❌ Google signup API failed: $message',
          name: 'auth_remote_datasource',
        );
        throw ServerException(message);
      }

      return AuthResponseDto.fromJson(response.data);
    } catch (e, stackTrace) {
      developer.log(
        '❌ Exception during Google signup API call',
        name: 'auth_remote_datasource',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  @override
  Future<AuthResponseDto> upgradeAnonymousWithGoogle(
    String participantIdentity,
    String googleAuthCode,
  ) async {
    final endpoint = Endpoints.upgradeAccount(participantIdentity);

    try {
      final response = await networkRequest.post(
        endpoint,
        body: {
          'googleAuthCode': googleAuthCode,
        },
      );

      if (!response.isSuccess) {
        final message = response.data is Map
            ? (response.data['message'] ?? 'Anonymous upgrade with Google failed')
            : 'Anonymous upgrade with Google failed';
        developer.log(
          '❌ Anonymous upgrade API failed: $message',
          name: 'auth_remote_datasource',
        );
        throw ServerException(message);
      }

      return AuthResponseDto.fromJson(response.data);
    } catch (e, stackTrace) {
      developer.log(
        '❌ Exception during anonymous upgrade API call',
        name: 'auth_remote_datasource',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  @override
  Future<AuthResponseDto> createAnonymousSession(String deviceId) async {
    final response = await networkRequest.post(
      Endpoints.anonymousSession,
      body: {'deviceId': deviceId},
    );

    if (!response.isSuccess) {
      final message = response.data is Map
          ? (response.data['message'] ?? 'Anonymous session creation failed')
          : 'Anonymous session creation failed';
      throw ServerException(message);
    }

    return AuthResponseDto.fromJson(response.data);
  }

  @override
  Future<UserDto> updateUserMetadata(UserMetadataDto metadata) async {
    final response = await networkRequest.patch(
      Endpoints.updateMetadata,
      body: {'metadata': metadata.toJson()},
    );

    if (!response.isSuccess) {
      final message = response.data is Map
          ? (response.data['message'] ?? 'Metadata update failed')
          : 'Metadata update failed';
      throw ServerException(message);
    }

    // Extract user from response
    final userData = response.data['user'] as Map<String, dynamic>;
    return UserDto.fromJson(userData);
  }
}
