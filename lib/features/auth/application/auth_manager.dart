import '../data/datasources/auth_local_datasource.dart';
import '../data/models/auth_session_dto.dart';
import '../domain/entities/auth_session.dart';
import '../domain/entities/user.dart';

class AuthManager {
  static final instance = AuthManager._();
  final _localSource = AuthLocalDataSourceImpl();

  User? user;
  AuthSession? _session;

  AuthManager._() {
    init();
  }

  Future<void> init() async {
    final sessionDto = await _localSource.getAuthSession();
    if (sessionDto != null) {
      _session = sessionDto.toEntity();
      user = _session?.user;
    }
  }

  Future<void> saveAuthSession(AuthSession session) async {
    final sessionDto = AuthSessionDto.fromEntity(session);
    await _localSource.saveAuthSession(sessionDto);
    _session = session;
    user = session.user;
  }

  /// Save only the access token (used by network interceptor)
  Future<void> saveAccessToken(String accessToken) async {
    await _localSource.updateAccessToken(accessToken);
    if (_session != null) {
      _session = AuthSession(
        accessToken: accessToken,
        refreshToken: _session!.refreshToken,
        user: _session!.user,
        expiresAt: _session!.expiresAt,
      );
    }
  }

  /// Clear authenticated user and session
  Future<void> clearAuthenticatedUser() async {
    await _localSource.clearAuthSession();
    _session = null;
    user = null;
  }

  Future<void> logout() async {
    await clearAuthenticatedUser();
  }

  String? get accessToken => _session?.accessToken;

  /// Get refresh token (used by network interceptor)
  String? get refreshToken => _session?.refreshToken;

  bool get isLoggedIn => _session?.accessToken != null;
}
