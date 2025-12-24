import 'dart:io';

/// Application configuration constants
class AppConfig {
  AppConfig._();

  // Backend configuration
  // Use 10.0.2.2 for Android emulator (special alias for host machine)
  // Use localhost for iOS simulator, macOS, and other platforms
  static String get backendUrl {
    if (Platform.isAndroid) {
      return "http://10.0.2.2:3000";
    }
    return "http://localhost:3000";
  }

  // Transcription service configuration
  static String get transcriptionWsUrl {
    if (Platform.isAndroid) {
      return "ws://10.0.2.2:3001";
    }
    return "ws://localhost:3001";
  }
}
