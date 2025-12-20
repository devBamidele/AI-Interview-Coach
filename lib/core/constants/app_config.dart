/// Application configuration constants
class AppConfig {
  AppConfig._();

  // Backend configuration
  static const String backendUrl = "http://10.0.2.2:3000";

  // Transcription service configuration
  static const String transcriptionWsUrl = "ws://10.0.2.2:3001";

  // Default room settings
  static const String defaultRoomName = "quickstart-room";
  static const String defaultParticipantPrefix = "flutter-user";
}
