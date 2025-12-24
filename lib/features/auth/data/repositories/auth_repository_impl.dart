import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/runner/service_runner.dart';
import '../../domain/entities/auth_session.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/auth_session_dto.dart';
import '../models/login_dto.dart';
import '../models/refresh_token_dto.dart';
import '../models/signup_dto.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(ref);
}

class AuthRepositoryImpl extends ServiceRunner implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  AuthRepositoryImpl(Ref ref)
    : _remoteDataSource = ref.read(authRemoteDataSourceProvider),
      _localDataSource = ref.read(authLocalDataSourceProvider),
      super(ref.read(networkInfoProvider));

  @override
  Future<Either<Failure, AuthSession>> login({
    required String email,
    required String password,
  }) {
    return run(() async {
      final loginDto = LoginDto(email: email, password: password);
      final response = await _remoteDataSource.login(loginDto);

      // Combine response tokens with user data into session
      final sessionDto = AuthSessionDto(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        user: response.user!,
      );

      // Save session locally
      await _localDataSource.saveAuthSession(sessionDto);

      return sessionDto.toEntity();
    }, errorTitle: 'Login Failed');
  }

  @override
  Future<Either<Failure, AuthSession>> signup({
    required String email,
    required String name,
    required String password,
  }) {
    return run(() async {
      final signupDto = SignupDto(email: email, name: name, password: password);
      final response = await _remoteDataSource.signup(signupDto);

      // Combine response tokens with user data into session
      final sessionDto = AuthSessionDto(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        user: response.user!,
      );

      // Save session locally
      await _localDataSource.saveAuthSession(sessionDto);

      return sessionDto.toEntity();
    }, errorTitle: 'Signup Failed');
  }

  @override
  Future<Either<Failure, AuthSession>> createAnonymousSession(
    String deviceId,
  ) {
    return run(() async {
      final response = await _remoteDataSource.createAnonymousSession(deviceId);

      // Combine response tokens with user data into session
      final sessionDto = AuthSessionDto(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        user: response.user!,
      );

      // Save session locally
      await _localDataSource.saveAuthSession(sessionDto);

      return sessionDto.toEntity();
    }, errorTitle: 'Anonymous Session Creation Failed');
  }

  @override
  Future<Either<Failure, AuthSession>> refreshToken(String refreshToken) {
    return run(() async {
      final refreshDto = RefreshTokenDto(refreshToken: refreshToken);
      final response = await _remoteDataSource.refreshToken(refreshDto);

      // Get existing session to preserve user data
      final existingSession = await _localDataSource.getAuthSession();
      if (existingSession == null) {
        throw Exception('No existing session found');
      }

      // Update session with new tokens
      final updatedSession = existingSession.copyWith(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
      );

      await _localDataSource.saveAuthSession(updatedSession);

      return updatedSession.toEntity();
    }, errorTitle: 'Token Refresh Failed');
  }

  @override
  Future<Either<Failure, void>> logout(String? refreshToken) {
    return run(() async {
      await _remoteDataSource.logout(refreshToken);
      await _localDataSource.clearAuthSession();
    }, errorTitle: 'Logout Failed');
  }

  @override
  Future<Either<Failure, AuthSession?>> getCurrentSession() {
    return run(() async {
      final sessionDto = await _localDataSource.getAuthSession();
      return sessionDto?.toEntity();
    }, errorTitle: 'Session Retrieval Failed');
  }
}
