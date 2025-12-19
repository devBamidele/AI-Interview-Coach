import '../constants/app_config.dart';

/// API endpoints for the application
class Endpoints {
  Endpoints._();

  /// Base URL for LiveKit token service
  static const String base = AppConfig.backendUrl;

  static const String apiDocs = '$base/api/docs';

  /// Get LiveKit token endpoint (POST)
  static String getLiveKitToken() {
    return '${AppConfig.backendUrl}/api/livekit/token';
  }

  /// Get interview analysis by ID (GET)
  static String getInterviewAnalysis(String interviewId) {
    return '${AppConfig.backendUrl}/api/interviews/$interviewId';
  }

  /// Get all interviews for a user (GET)
  static String getUserInterviews(String participantIdentity) {
    return '${AppConfig.backendUrl}/api/interviews/user/$participantIdentity';
  }

  // Authentication endpoints

  /// Login endpoint (POST)
  static String get login => '$base/api/auth/login';

  /// Signup endpoint (POST)
  static String get signup => '$base/api/auth/signup';

  /// Refresh token endpoint (POST)
  static String get refreshToken => '$base/api/auth/refresh';

  /// Logout endpoint (POST)
  static String get logout => '$base/api/auth/logout';

  /// Upgrade account endpoint (POST)
  static String upgradeAccount(String participantIdentity) {
    return '$base/api/auth/upgrade/$participantIdentity';
  }
}
