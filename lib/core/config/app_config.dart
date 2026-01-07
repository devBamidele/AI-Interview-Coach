import 'dart:io';

import 'package:flutter/foundation.dart';
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
  // Google OAuth Configuration
  // ========================================
  // Note: App targets mobile only (Android & iOS), web is not supported

  /// Google OAuth Web Client ID (for server-side verification)
  ///
  /// This is used by the backend to verify Google auth tokens
  /// Same across all environments
  static const String googleWebClientId =
      '284689058898-a7qn5mb02jekh3emga0ttocbqh12uell.apps.googleusercontent.com';

  /// Google OAuth iOS Client ID
  ///
  /// Used for iOS platform
  static const String googleIosClientId =
      '284689058898-4vd7bbuei4jaomfraq0cctrnccjsud76.apps.googleusercontent.com';

  /// Google OAuth Android Client ID (environment and build-type specific)
  ///
  /// Different client IDs for each environment and build type:
  /// - Dev: Debug builds with debug keystore
  /// - Staging: Debug builds with debug keystore
  /// - Production Debug: Debug builds for local testing (uses debug keystore)
  /// - Production Release: Release builds distributed via Google Play (uses Play signing)
  ///
  /// SHA-1 Fingerprints Reference:
  /// - Debug keystore: 57:54:55:95:77:BB:7E:4D:ED:6C:EE:44:F2:C5:2D:C2:E6:98:83:67
  /// - Upload keystore: D5:F6:AF:84:C2:1A:B5:DE:0D:E4:C1:A7:B3:DC:EF:E6:11:43:67:7A (used only for uploading to Play Console)
  /// - Google Play signing: From Play Console > Release > Setup > App integrity
  ///
  /// IMPORTANT: Google Cloud Console OAuth clients can only have ONE SHA-1 per client ID.
  /// Therefore, we need separate client IDs for debug and release builds in production.
  static String get googleAndroidClientId {
    switch (environment) {
      case Environment.dev:
        // Dev environment - Debug builds only
        // Client ID: 284689058898-n52sgp18fbqgvrppfr3iqbf98akg2hst.apps.googleusercontent.com
        // Package: com.rehearsecoach.app.dev
        // SHA-1: 57:54:55:95:77:BB:7E:4D:ED:6C:EE:44:F2:C5:2D:C2:E6:98:83:67 (debug keystore)
        return '284689058898-n52sgp18fbqgvrppfr3iqbf98akg2hst.apps.googleusercontent.com';

      case Environment.staging:
        // Staging environment - Debug builds
        // Client ID: 284689058898-b7m9vff2g2o75d48m92igejjpg3j6dg9.apps.googleusercontent.com
        // Package: com.rehearsecoach.app.staging
        // SHA-1: 57:54:55:95:77:BB:7E:4D:ED:6C:EE:44:F2:C5:2D:C2:E6:98:83:67 (debug keystore)
        return '284689058898-b7m9vff2g2o75d48m92igejjpg3j6dg9.apps.googleusercontent.com';

      case Environment.prod:
        // Production environment - Build type matters here
        if (kDebugMode) {
          // Production Debug builds (running prod config locally in IDE/emulator)
          // This happens when you run the "prod" launch configuration in debug mode
          // Package: com.rehearsecoach.app
          // SHA-1: 57:54:55:95:77:BB:7E:4D:ED:6C:EE:44:F2:C5:2D:C2:E6:98:83:67 (debug keystore)
          return '284689058898-veopm1etdofh8hrv1c1r2ma28o7rsuhm.apps.googleusercontent.com';
        } else {
          // Production Release builds (distributed via Google Play - all tracks)
          // Client ID: 284689058898-s4ef3g9ttph4nqdpspqeldfhdum90q6a.apps.googleusercontent.com
          // Package: com.rehearsecoach.app
          // SHA-1: Google Play signing certificate (from Play Console > App integrity)
          // Note: Works for internal testing, closed testing, open testing, AND production
          // because Google re-signs all uploads with the same Play signing key
          return '284689058898-s4ef3g9ttph4nqdpspqeldfhdum90q6a.apps.googleusercontent.com';
        }
    }
  }

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
