/// Application configuration constants
class AppConfig {
  AppConfig._();

  // Backend configuration
  static const String backendUrl = "http://localhost:3000";
  static const String tokenEndpoint = "/livekit/getToken";

  // LiveKit configuration
  static const String livekitUrl = "wss://aiinterviewmvp-4o1z3ma6.livekit.cloud";

  // Transcription service configuration
  static const String transcriptionWsUrl = "ws://localhost:3000";

  // Default room settings
  static const String defaultRoomName = "quickstart-room";
  static const String defaultParticipantPrefix = "flutter-user";

  // Helper methods
  static String getTokenUrl({
    required String roomName,
    required String participantName,
  }) {
    return "$backendUrl$tokenEndpoint?room=$roomName&name=$participantName";
  }
}
