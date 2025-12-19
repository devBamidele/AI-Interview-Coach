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
    if (AuthManager.instance.isLoggedIn) {
      final user = AuthManager.instance.user;
      if (user != null) {
        state = AuthState.authenticated(user);
      }
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();

    final result = await _repository.login(
      email: email,
      password: password,
    );

    result.fold(
      (failure) {
        state = AuthState.error(failure.message);
      },
      (session) {
        AuthManager.instance.saveAuthSession(session);
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
      (session) {
        AuthManager.instance.saveAuthSession(session);
        state = AuthState.authenticated(session.user);
      },
    );
  }

  Future<void> logout() async {
    state = const AuthState.loading();

    final refreshToken = AuthManager.instance.refreshToken;
    final result = await _repository.logout(refreshToken);

    result.fold(
      (failure) {
        // Even if API call fails, clear local session
        AuthManager.instance.logout();
        state = const AuthState.unauthenticated();
      },
      (_) {
        AuthManager.instance.logout();
        state = const AuthState.unauthenticated();
      },
    );
  }
}
