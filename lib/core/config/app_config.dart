import 'dart:io';

import 'package:rehearsecoach/core/config/environment.dart';

/// Application configuration that automatically adapts based on the selected environment.
///
/// Configuration values are determined at compile-time using the [Environment] enum,
/// which is set via --dart-define=ENV=`<env>` during build.
///
/// This class provides environment-specific configuration for:
/// - Backend API URLs
/// - WebSocket URLs
/// - Feature flags and behavior switches
///
/// Example usage:
/// ```dart
/// final apiUrl = AppConfig.backendUrl;
/// final wsUrl = AppConfig.transcriptionWsUrl;
/// final isProd = AppConfig.isProduction;
/// ```
class AppConfig {
  AppConfig._();

  /// Current environment
  static Environment get environment => Environment.current;

  /// Returns true if running in production environment
  static bool get isProduction => environment.isProd;

  /// Returns true if running in development environment
  static bool get isDevelopment => environment.isDev;

  /// Returns true if running in staging environment
  static bool get isStaging => environment.isStaging;

  // ========================================
  // Backend API Configuration
  // ========================================

  /// Backend REST API base URL
  ///
  /// - Development: Uses platform-specific localhost (10.0.2.2 for Android emulator)
  /// - Staging: GCP staging server
  /// - Production: GCP production server
  static String get backendUrl {
    switch (environment) {
      case Environment.dev:
        // Use 10.0.2.2 for Android emulator (special alias for host machine)
        // Use localhost for iOS simulator, macOS, and other platforms
        if (Platform.isAndroid) {
          return 'http://10.0.2.2:8080';
        }
        return 'http://localhost:8080';

      case Environment.staging:
        return 'https://ai-interview-backend-staging-smyxhup27q-uc.a.run.app';

      case Environment.prod:
        return 'https://ai-interview-backend-production-smyxhup27q-uc.a.run.app';
    }
  }

  /// Transcription WebSocket URL
  ///
  /// - Development: Uses platform-specific localhost WebSocket
  /// - Staging: GCP staging WebSocket server
  /// - Production: GCP production WebSocket server
  static String get transcriptionWsUrl {
    switch (environment) {
      case Environment.dev:
        if (Platform.isAndroid) {
          return 'ws://10.0.2.2:3001';
        }
        return 'ws://localhost:3001';

      case Environment.staging:
        return 'wss://transcription-service-staging-prcu7plmua-uc.a.run.app';

      case Environment.prod:
        return 'wss://transcription-service-production-prcu7plmua-uc.a.run.app';
    }
  }

  // ========================================
  // Feature Flags & Behavior Configuration
  // ========================================

  /// Enable verbose debug logging
  ///
  /// Only enabled in development, disabled in staging and production
  static bool get enableDebugLogs => environment.isDev;

  /// Enable analytics and crash reporting
  ///
  /// Typically only enabled in production, but can be tested in staging
  static bool get enableAnalytics => environment.isProd;

  /// Show environment banner in app (for non-production builds)
  ///
  /// Useful to visually distinguish dev/staging builds from production
  static bool get showEnvironmentBanner => !environment.isProd;

  // ========================================
  // Build Information
  // ========================================

  /// Human-readable environment name for display
  static String get environmentName => environment.displayName;

  /// App display name (can vary by environment)
  static String get appName {
    switch (environment) {
      case Environment.dev:
        return 'Rehearse Coach (Dev)';
      case Environment.staging:
        return 'Rehearse Coach (Staging)';
      case Environment.prod:
        return 'Rehearse Coach';
    }
  }
}
