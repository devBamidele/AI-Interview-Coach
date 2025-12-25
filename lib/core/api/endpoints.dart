import '../constants/app_config.dart';

/// API endpoints for the application
class Endpoints {
  Endpoints._();

  /// Base URL for LiveKit token service
  static String base = AppConfig.backendUrl;

  static String apiDocs = '$base/api/docs';

  /// Get LiveKit token endpoint (POST)
  static String getLiveKitToken() {
    return '${AppConfig.backendUrl}/api/livekit/token';
  }

  /// Get interview analysis by interview ID (GET)
  /// Requires JWT authentication
  static String getInterviewAnalysis(String interviewId) {
    return '${AppConfig.backendUrl}/api/interviews/interview?interviewId=$interviewId';
  }

  /// Get all interviews for a user - SUMMARY ONLY (GET)
  /// Optimized endpoint with 80-90% smaller payload
  /// Requires JWT authentication
  static String get getUserInterviewsSummary {
    return '${AppConfig.backendUrl}/api/interviews/my-interviews/summary';
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

  /// Anonymous session endpoint (POST)
  /// Creates or retrieves anonymous user session with JWT tokens
  static String get anonymousSession => '$base/api/auth/anonymous-session';

  /// Upgrade account endpoint (POST)
  static String upgradeAccount(String participantIdentity) {
    return '$base/api/auth/upgrade/$participantIdentity';
  }
}
