import 'dart:developer' as developer;

import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/auth_repository_impl.dart';
import '../domain/repositories/auth_repository.dart';
import 'auth_manager.dart';
import 'auth_state.dart';

part 'auth_notifier.g.dart';

/// Notifier for managing authentication state with Riverpod
@riverpod
class AuthNotifier extends _$AuthNotifier {
  late final AuthRepository _repository;

  @override
  AuthState build() {
    _repository = ref.read(authRepositoryProvider);

    // Check if already authenticated
    _checkAuthStatus();

    return const AuthState.initial();
  }

  Future<void> _checkAuthStatus() async {
    final authManager = ref.read(authManagerProvider.notifier);
    if (authManager.isLoggedIn) {
      final user = authManager.user;
      if (user != null) {
        state = AuthState.authenticated(user);
      }
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> login({required String email, required String password}) async {
    state = const AuthState.loading();

    final result = await _repository.login(email: email, password: password);

    result.fold(
      (failure) {
        state = AuthState.error(failure.message);
      },
      (session) async {
        await ref.read(authManagerProvider.notifier).saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  Future<void> signup({
    required String email,
    required String name,
    required String password,
  }) async {
    state = const AuthState.loading();

    final result = await _repository.signup(
      email: email,
      name: name,
      password: password,
    );

    result.fold(
      (failure) {
        state = AuthState.error(failure.message);
      },
      (session) async {
        await ref.read(authManagerProvider.notifier).saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  /// Create anonymous session for guest users
  /// Uses device ID to create persistent anonymous account
  Future<void> createAnonymousSession(String deviceId) async {
    state = const AuthState.loading();

    final result = await _repository.createAnonymousSession(deviceId);

    result.fold(
      (failure) {
        state = AuthState.error(failure.message);
      },
      (session) async {
        await ref.read(authManagerProvider.notifier).saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  /// Login with Google
  Future<void> loginWithGoogle() async {
    developer.log('Starting Google login', name: 'auth_notifier');
    state = const AuthState.loading();

    final result = await _repository.loginWithGoogle();

    result.fold(
      (failure) {
        developer.log(
          'Google login failed: ${failure.message}',
          name: 'auth_notifier',
        );
        // Don't show error UI for user cancellations
        if (failure.runtimeType.toString() == 'CancellationFailure') {
          developer.log('User cancelled Google login', name: 'auth_notifier');
          state = const AuthState.unauthenticated();
        } else {
          state = AuthState.error(failure.message);
        }
      },
      (session) async {
        developer.log(
          'Google login successful: ${session.user.email}',
          name: 'auth_notifier',
        );
        await ref.read(authManagerProvider.notifier).saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  /// Sign up with Google
  Future<void> signUpWithGoogle() async {
    developer.log('Starting Google signup', name: 'auth_notifier');
    state = const AuthState.loading();

    final result = await _repository.signUpWithGoogle();

    result.fold(
      (failure) {
        developer.log(
          'Google signup failed: ${failure.message}',
          name: 'auth_notifier',
        );
        // Don't show error UI for user cancellations
        if (failure.runtimeType.toString() == 'CancellationFailure') {
          developer.log('User cancelled Google signup', name: 'auth_notifier');
          state = const AuthState.unauthenticated();
        } else {
          state = AuthState.error(failure.message);
        }
      },
      (session) async {
        developer.log(
          'Google signup successful: ${session.user.email}',
          name: 'auth_notifier',
        );
        await ref.read(authManagerProvider.notifier).saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  /// Upgrade anonymous user to Google account
  Future<void> upgradeAnonymousWithGoogle(String participantIdentity) async {
    developer.log('Starting anonymous upgrade', name: 'auth_notifier');
    state = const AuthState.loading();

    final result = await _repository.upgradeAnonymousWithGoogle(
      participantIdentity,
    );

    result.fold(
      (failure) {
        developer.log(
          'Anonymous upgrade failed: ${failure.message}',
          name: 'auth_notifier',
        );
        // Don't show error UI for user cancellations
        if (failure.runtimeType.toString() == 'CancellationFailure') {
          developer.log('User cancelled anonymous upgrade', name: 'auth_notifier');
          state = const AuthState.unauthenticated();
        } else {
          state = AuthState.error(failure.message);
        }
      },
      (session) async {
        developer.log(
          'Anonymous upgrade successful: ${session.user.email}',
          name: 'auth_notifier',
        );
        await ref.read(authManagerProvider.notifier).saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  Future<void> logout() async {
    state = const AuthState.loading();

    final authManager = ref.read(authManagerProvider.notifier);
    final refreshToken = authManager.refreshToken;

    // Sign out from Google if user was authenticated with Google
    try {
      await GoogleSignIn.instance.signOut();
    } catch (e) {
      // Ignore errors - user might not be signed in with Google
      // This is intentional to support users with email/password auth
    }

    // Clear local session first before API call
    await authManager.logout();

    // Then make API call to invalidate tokens on server
    // This is fire-and-forget - we don't care if it fails since local session is already cleared
    await _repository.logout(refreshToken);
  }
}
