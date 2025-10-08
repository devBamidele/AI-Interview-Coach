import '../constants/app_config.dart';

/// API endpoints for the application
class Endpoints {
  Endpoints._();

  /// Base URL for LiveKit token service
  static const String base = AppConfig.backendUrl;

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
}
