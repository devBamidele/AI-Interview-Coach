import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/datasources/auth_local_datasource.dart';
import '../data/models/auth_session_dto.dart';
import '../domain/entities/auth_session.dart';
import '../domain/entities/user.dart';

part 'auth_manager.g.dart';

/// State for AuthManager
class AuthManagerState {
  final User? user;
  final AuthSession? session;

  const AuthManagerState({this.user, this.session});

  AuthManagerState copyWith({User? user, AuthSession? session}) {
    return AuthManagerState(
      user: user ?? this.user,
      session: session ?? this.session,
    );
  }

  String? get accessToken => session?.accessToken;
  String? get refreshToken => session?.refreshToken;
  bool get isLoggedIn => session?.accessToken != null;
}

@Riverpod(keepAlive: true)
class AuthManager extends _$AuthManager {
  int _buildId = 0;
  late final AuthLocalDataSource _localSource;

  @override
  AuthManagerState build() {
    _localSource = ref.read(authLocalDataSourceProvider);
    final currentBuild = ++_buildId;
    _init(currentBuild);
    return const AuthManagerState();
  }

  Future<void> _init(int buildId) async {
    final sessionDto = await _localSource.getAuthSession();
    if (buildId != _buildId) return;

    if (sessionDto != null) {
      final session = sessionDto.toEntity();
      state = AuthManagerState(session: session, user: session.user);
    }
  }

  Future<void> saveAuthSession(AuthSession session) async {
    final sessionDto = AuthSessionDto.fromEntity(session);
    await _localSource.saveAuthSession(sessionDto);
    state = AuthManagerState(session: session, user: session.user);
  }

  /// Save only the access token (used by network interceptor)
  Future<void> saveAccessToken(String accessToken) async {
    await _localSource.updateAccessToken(accessToken);
    if (state.session != null) {
      final updatedSession = AuthSession(
        accessToken: accessToken,
        refreshToken: state.session!.refreshToken,
        user: state.session!.user,
        expiresAt: state.session!.expiresAt,
      );
      state = AuthManagerState(
        session: updatedSession,
        user: updatedSession.user,
      );
    }
  }

  /// Clear authenticated user and session
  Future<void> clearAuthenticatedUser() async {
    await _localSource.clearAuthSession();
    state = const AuthManagerState();
  }

  Future<void> logout() async {
    await clearAuthenticatedUser();
  }

  String? get accessToken => state.accessToken;
  String? get refreshToken => state.refreshToken;
  bool get isLoggedIn => state.isLoggedIn;
  User? get user => state.user;
}
