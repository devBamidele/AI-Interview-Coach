import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'interview_token_store.g.dart';

/// Service for storing and retrieving interview access tokens.
/// Tokens are stored both in memory (for fast access) and in secure storage (for persistence).
class InterviewTokenStore {
  InterviewTokenStore(this._secureStorage);

  final FlutterSecureStorage _secureStorage;
  final Map<String, String> _memoryCache = {};

  static const String _keyPrefix = 'interview_token_';
  static const String _allKeysKey = 'interview_token_all_keys';

  /// Store a token for a specific interview ID
  Future<void> storeToken(String interviewId, String accessToken) async {
    // Store in memory cache
    _memoryCache[interviewId] = accessToken;

    // Persist to secure storage
    await _secureStorage.write(
      key: '$_keyPrefix$interviewId',
      value: accessToken,
    );

    // Update the list of all keys
    await _updateAllKeys(interviewId);
  }

  /// Retrieve a token for a specific interview ID
  /// Returns null if token is not found
  Future<String?> getToken(String interviewId) async {
    // Try memory cache first
    if (_memoryCache.containsKey(interviewId)) {
      return _memoryCache[interviewId];
    }

    // Fallback to secure storage
    final token = await _secureStorage.read(key: '$_keyPrefix$interviewId');
    if (token != null) {
      // Cache it in memory for future access
      _memoryCache[interviewId] = token;
    }

    return token;
  }

  /// Get any valid token (useful for fetching all user interviews)
  /// Returns the first available token from memory cache or secure storage
  Future<String?> getAnyToken() async {
    // Try memory cache first
    if (_memoryCache.isNotEmpty) {
      return _memoryCache.values.first;
    }

    // Get all stored interview IDs
    final interviewIds = await getAllInterviewIds();
    if (interviewIds.isEmpty) {
      return null;
    }

    // Get the first token
    final token = await _secureStorage.read(
      key: '$_keyPrefix${interviewIds.first}',
    );
    if (token != null) {
      _memoryCache[interviewIds.first] = token;
    }

    return token;
  }

  /// Remove a token for a specific interview ID
  Future<void> removeToken(String interviewId) async {
    _memoryCache.remove(interviewId);
    await _secureStorage.delete(key: '$_keyPrefix$interviewId');

    // Remove from all keys list
    final allKeys = await getAllInterviewIds();
    allKeys.remove(interviewId);
    await _saveAllKeys(allKeys);
  }

  /// Clear all stored tokens
  Future<void> clearAll() async {
    _memoryCache.clear();

    final interviewIds = await getAllInterviewIds();
    for (final id in interviewIds) {
      await _secureStorage.delete(key: '$_keyPrefix$id');
    }

    await _secureStorage.delete(key: _allKeysKey);
  }

  /// Get all stored interview IDs with tokens
  Future<List<String>> getAllInterviewIds() async {
    final allKeysJson = await _secureStorage.read(key: _allKeysKey);
    if (allKeysJson == null || allKeysJson.isEmpty) {
      return [];
    }

    return allKeysJson.split(',');
  }

  /// Update the list of all interview IDs
  Future<void> _updateAllKeys(String newInterviewId) async {
    final allKeys = await getAllInterviewIds();
    if (!allKeys.contains(newInterviewId)) {
      allKeys.add(newInterviewId);
      await _saveAllKeys(allKeys);
    }
  }

  /// Save the list of all interview IDs
  Future<void> _saveAllKeys(List<String> keys) async {
    final keysString = keys.join(',');
    await _secureStorage.write(key: _allKeysKey, value: keysString);
  }
}

@Riverpod(keepAlive: true)
InterviewTokenStore interviewTokenStore(Ref ref) {
  const secureStorage = FlutterSecureStorage();
  return InterviewTokenStore(secureStorage);
}
