import '../constants/app_config.dart';

/// API endpoints for the application
class Endpoints {
  Endpoints._();

  /// Base URL for LiveKit token service
  static const String base = AppConfig.backendUrl;

  /// Get LiveKit token endpoint
  static String getLiveKitToken(String roomName, String participantName) {
    return AppConfig.getTokenUrl(
      roomName: roomName,
      participantName: participantName,
    );
  }
}
