import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_request.dart';
import '../models/auth_response_dto.dart';
import '../models/login_dto.dart';
import '../models/refresh_token_dto.dart';
import '../models/signup_dto.dart';

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
  Future<AuthResponseDto> refreshToken(RefreshTokenDto refreshDto);
  Future<void> logout(String? refreshToken);
  Future<AuthResponseDto> createAnonymousSession(String deviceId);
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
}
