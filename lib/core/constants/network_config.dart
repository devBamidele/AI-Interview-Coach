/// Configuration constants for network quality monitoring
class NetworkConfig {
  NetworkConfig._();

  /// How often to poll for latency measurements (in seconds)
  static const Duration latencyPollInterval = Duration(seconds: 10);

  /// Timeout for ping operations (in seconds)
  static const int pingTimeoutSeconds = 5;

  /// Number of pings to perform per measurement
  static const int pingCount = 1;

  /// Latency thresholds for reference (in milliseconds)
  /// These are informational and don't override LiveKit's quality assessment
  static const int excellentLatencyMs = 50;
  static const int goodLatencyMs = 100;
  static const int poorLatencyMs = 200;
}
