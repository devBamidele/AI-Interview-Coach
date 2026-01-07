import 'dart:developer' as developer;
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/runner/service_runner.dart';
import '../../domain/entities/auth_session.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/user_metadata.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/auth_session_dto.dart';
import '../models/login_dto.dart';
import '../models/refresh_token_dto.dart';
import '../models/signup_dto.dart';
import '../models/user_metadata_dto.dart';

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

  /// Get platform-specific Google OAuth client ID
  /// Only supports iOS and Android (mobile-only app)
  String _getGoogleClientId() {
    if (Platform.isIOS) {
      return AppConfig.googleIosClientId;
    } else if (Platform.isAndroid) {
      return AppConfig.googleAndroidClientId;
    }
    // Should not reach here for mobile-only app
    throw UnsupportedError(
      'Google Sign-In is only supported on iOS and Android',
    );
  }

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
  Future<Either<Failure, AuthSession>> loginWithGoogle() {
    return run(() async {
      // Get GoogleSignIn singleton instance
      final googleSignIn = GoogleSignIn.instance;

      // Get platform-specific client ID
      final clientId = _getGoogleClientId();

      // Initialize Google Sign In with platform-specific client IDs
      try {
        await googleSignIn.initialize(
          clientId: clientId,
          serverClientId: AppConfig.googleWebClientId,
        );

        // Clear any existing sign-in state to avoid "reauth failed" errors
        // This helps when there's cached credentials that are causing issues
        try {
          await googleSignIn.signOut();
        } catch (signOutError) {
          // Ignore errors if user wasn't signed in
        }
      } catch (e, stackTrace) {
        developer.log(
          '❌ Failed to initialize Google Sign-In',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }

      // Use interactive authentication
      try {
        await googleSignIn.authenticate();
      } catch (e, stackTrace) {
        final errorString = e.toString();

        // Provide detailed error information for common issues
        if (errorString.contains('Account reauth failed')) {
          developer.log(
            '❌ Account re-authentication failed - Check SHA-1 fingerprint and OAuth client ID configuration',
            name: 'auth_repository',
            error: e,
          );
        } else {
          developer.log(
            '❌ Google authentication failed',
            name: 'auth_repository',
            error: e,
            stackTrace: stackTrace,
          );
        }
        rethrow;
      }

      // Request server authorization to get auth code for backend
      final serverAuth = await googleSignIn.authorizationClient.authorizeServer(
        ['openid', 'email', 'profile'],
      );

      if (serverAuth == null || serverAuth.serverAuthCode.isEmpty) {
        developer.log(
          '❌ Failed to get server auth code',
          name: 'auth_repository',
        );
        throw Exception('Failed to get Google server auth code');
      }

      // Send server auth code to backend
      try {
        final response = await _remoteDataSource.loginWithGoogle(
          serverAuth.serverAuthCode,
        );

        // Combine response tokens with user data into session
        final sessionDto = AuthSessionDto(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
          user: response.user!,
        );

        // Save session locally
        await _localDataSource.saveAuthSession(sessionDto);

        return sessionDto.toEntity();
      } catch (e, stackTrace) {
        developer.log(
          '❌ Backend login failed',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }
    }, errorTitle: 'Google Login Failed');
  }

  @override
  Future<Either<Failure, AuthSession>> signUpWithGoogle() {
    return run(() async {
      // Get GoogleSignIn singleton instance
      final googleSignIn = GoogleSignIn.instance;

      // Get platform-specific client ID
      final clientId = _getGoogleClientId();

      // Initialize Google Sign In with platform-specific client IDs
      try {
        await googleSignIn.initialize(
          clientId: clientId,
          serverClientId: AppConfig.googleWebClientId,
        );
      } catch (e, stackTrace) {
        developer.log(
          '❌ Failed to initialize Google Sign-In',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }

      // Use interactive authentication for signup
      try {
        await googleSignIn.authenticate();
      } catch (e, stackTrace) {
        developer.log(
          '❌ Google authentication failed',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }

      // Request server authorization to get auth code for backend
      final serverAuth = await googleSignIn.authorizationClient.authorizeServer(
        ['openid', 'email', 'profile'],
      );

      if (serverAuth == null || serverAuth.serverAuthCode.isEmpty) {
        developer.log(
          '❌ Failed to get server auth code',
          name: 'auth_repository',
        );
        throw Exception('Failed to get Google server auth code');
      }

      // Send server auth code to backend
      try {
        final response = await _remoteDataSource.signUpWithGoogle(
          serverAuth.serverAuthCode,
        );

        // Combine response tokens with user data into session
        final sessionDto = AuthSessionDto(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
          user: response.user!,
        );

        // Save session locally
        await _localDataSource.saveAuthSession(sessionDto);

        return sessionDto.toEntity();
      } catch (e, stackTrace) {
        developer.log(
          '❌ Backend signup failed',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }
    }, errorTitle: 'Google Signup Failed');
  }

  @override
  Future<Either<Failure, AuthSession>> upgradeAnonymousWithGoogle(
    String participantIdentity,
  ) {
    return run(() async {
      // Get GoogleSignIn singleton instance
      final googleSignIn = GoogleSignIn.instance;

      // Get platform-specific client ID
      final clientId = _getGoogleClientId();

      // Initialize Google Sign In with platform-specific client IDs
      try {
        await googleSignIn.initialize(
          clientId: clientId,
          serverClientId: AppConfig.googleWebClientId,
        );
      } catch (e, stackTrace) {
        developer.log(
          '❌ Failed to initialize Google Sign-In',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }

      // Use interactive authentication for upgrade
      try {
        await googleSignIn.authenticate();
      } catch (e, stackTrace) {
        developer.log(
          '❌ Google authentication failed',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }

      // Request server authorization to get auth code for backend
      final serverAuth = await googleSignIn.authorizationClient.authorizeServer(
        ['openid', 'email', 'profile'],
      );

      if (serverAuth == null || serverAuth.serverAuthCode.isEmpty) {
        developer.log(
          '❌ Failed to get server auth code',
          name: 'auth_repository',
        );
        throw Exception('Failed to get Google server auth code');
      }

      // Send server auth code to backend for upgrade
      try {
        final response = await _remoteDataSource.upgradeAnonymousWithGoogle(
          participantIdentity,
          serverAuth.serverAuthCode,
        );

        // Combine response tokens with user data into session
        final sessionDto = AuthSessionDto(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
          user: response.user!,
        );

        // Save session locally
        await _localDataSource.saveAuthSession(sessionDto);

        return sessionDto.toEntity();
      } catch (e, stackTrace) {
        developer.log(
          '❌ Backend upgrade failed',
          name: 'auth_repository',
          error: e,
          stackTrace: stackTrace,
        );
        rethrow;
      }
    }, errorTitle: 'Anonymous Upgrade with Google Failed');
  }

  @override
  Future<Either<Failure, AuthSession>> createAnonymousSession(String deviceId) {
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

  @override
  Future<Either<Failure, User>> updateUserMetadata(UserMetadata metadata) {
    return run(() async {
      // Convert entity to DTO for API call
      final metadataDto = UserMetadataDto(
        hasGrantedInterviewConsent: metadata.hasGrantedInterviewConsent,
      );

      // Call API to update metadata
      final updatedUserDto = await _remoteDataSource.updateUserMetadata(
        metadataDto,
      );

      // Get current session from storage
      final currentSession = await _localDataSource.getAuthSession();
      if (currentSession == null) {
        throw Exception('No active session');
      }

      // Create updated session with new user data
      final updatedSession = currentSession.copyWith(user: updatedUserDto);

      // Save updated session locally
      await _localDataSource.saveAuthSession(updatedSession);

      return updatedUserDto.toEntity();
    }, errorTitle: 'Metadata Update Failed');
  }
}
