/// Represents the application environment.
///
/// The environment is determined at compile-time using --dart-define=ENV=`<env>`
/// This ensures that the environment cannot be changed at runtime, preventing
/// accidental use of wrong endpoints in production builds.
enum Environment {
  /// Development environment - uses localhost/emulator endpoints
  dev,

  /// Staging environment - uses GCP staging server
  staging,

  /// Production environment - uses GCP production server
  prod;

  /// Gets the current environment from compile-time constant.
  ///
  /// Defaults to 'dev' if ENV is not specified during build.
  ///
  /// Usage:
  /// ```bash
  /// # Development (default)
  /// flutter run
  ///
  /// # Staging
  /// flutter run --dart-define=ENV=staging
  ///
  /// # Production
  /// flutter build appbundle --dart-define=ENV=prod --release
  /// ```
  static Environment get current {
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');
    return Environment.values.byName(env);
  }

  /// Returns true if this is a development environment
  bool get isDev => this == Environment.dev;

  /// Returns true if this is a staging environment
  bool get isStaging => this == Environment.staging;

  /// Returns true if this is a production environment
  bool get isProd => this == Environment.prod;

  /// Returns a human-readable name for the environment
  String get displayName {
    switch (this) {
      case Environment.dev:
        return 'Development';
      case Environment.staging:
        return 'Staging';
      case Environment.prod:
        return 'Production';
    }
  }
}
