import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:livekit_client/livekit_client.dart';

/// Represents the network quality level for the interview connection
enum NetworkQualityLevel {
  unknown,
  poor,
  good,
  excellent;

  /// Maps LiveKit's ConnectionQuality enum to our NetworkQualityLevel
  static NetworkQualityLevel fromLiveKitQuality(ConnectionQuality quality) {
    switch (quality) {
      case ConnectionQuality.excellent:
        return NetworkQualityLevel.excellent;
      case ConnectionQuality.good:
        return NetworkQualityLevel.good;
      case ConnectionQuality.poor:
        return NetworkQualityLevel.poor;
      case ConnectionQuality.lost:
        return NetworkQualityLevel.poor;
      case ConnectionQuality.unknown:
        return NetworkQualityLevel.unknown;
    }
  }

  /// Gets the number of signal bars to display (1-4)
  int get bars {
    switch (this) {
      case NetworkQualityLevel.excellent:
        return 4;
      case NetworkQualityLevel.good:
        return 3;
      case NetworkQualityLevel.poor:
        return 2;
      case NetworkQualityLevel.unknown:
        return 1;
    }
  }
}

/// Contains comprehensive network quality metrics
class NetworkQualityMetrics {
  final NetworkQualityLevel level;
  final ConnectivityResult connectionType;
  final int? latencyMs;
  final DateTime timestamp;

  const NetworkQualityMetrics({
    required this.level,
    required this.connectionType,
    this.latencyMs,
    required this.timestamp,
  });

  /// Creates a copy with updated fields
  NetworkQualityMetrics copyWith({
    NetworkQualityLevel? level,
    ConnectivityResult? connectionType,
    int? latencyMs,
    DateTime? timestamp,
  }) {
    return NetworkQualityMetrics(
      level: level ?? this.level,
      connectionType: connectionType ?? this.connectionType,
      latencyMs: latencyMs ?? this.latencyMs,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  String toString() {
    return 'NetworkQualityMetrics(level: $level, connectionType: $connectionType, latencyMs: $latencyMs, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NetworkQualityMetrics &&
        other.level == level &&
        other.connectionType == connectionType &&
        other.latencyMs == latencyMs &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return level.hashCode ^
        connectionType.hashCode ^
        latencyMs.hashCode ^
        timestamp.hashCode;
  }
}
