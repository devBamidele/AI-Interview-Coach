import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/auth_session_dto.dart';

/// Local data source for authentication session storage
abstract class AuthLocalDataSource {
  Future<AuthSessionDto?> getAuthSession();
  Future<AuthSessionDto> saveAuthSession(AuthSessionDto session);
  Future<void> clearAuthSession();
  Future<void> updateAccessToken(String accessToken);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String _sessionKey = 'auth_session';
  final FlutterSecureStorage _storage;

  AuthLocalDataSourceImpl({
    FlutterSecureStorage? storage,
  }) : _storage = storage ?? const FlutterSecureStorage();

  @override
  Future<AuthSessionDto?> getAuthSession() async {
    try {
      final jsonString = await _storage.read(key: _sessionKey);
      if (jsonString == null) return null;

      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
      return AuthSessionDto.fromJson(jsonMap);
    } catch (e) {
      // If there's any error reading/parsing, return null
      return null;
    }
  }

  @override
  Future<AuthSessionDto> saveAuthSession(AuthSessionDto session) async {
    final jsonMap = session.toJson();
    final jsonString = json.encode(jsonMap);
    await _storage.write(key: _sessionKey, value: jsonString);
    return session;
  }

  @override
  Future<void> clearAuthSession() async {
    await _storage.delete(key: _sessionKey);
  }

  @override
  Future<void> updateAccessToken(String accessToken) async {
    final session = await getAuthSession();
    if (session == null) return;

    final updatedSession = session.copyWith(accessToken: accessToken);
    await saveAuthSession(updatedSession);
  }
}
