import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rehearsecoach/core/network/network_quality.dart';

part 'network_quality_state.freezed.dart';

/// Represents the network quality monitoring state
@freezed
class NetworkQualityState with _$NetworkQualityState {
  /// No monitoring active (before interview starts or after it ends)
  const factory NetworkQualityState.disconnected() = Disconnected;

  /// Monitoring is active with current quality metrics
  const factory NetworkQualityState.monitoring({
    required NetworkQualityLevel level,
    required ConnectivityResult connectionType,
    int? latencyMs,
  }) = Monitoring;
}

/// Extension methods for convenient state checking
extension NetworkQualityStateX on NetworkQualityState {
  bool get isMonitoring => this is Monitoring;
  bool get isDisconnected => this is Disconnected;

  NetworkQualityLevel get qualityLevel => when(
        disconnected: () => NetworkQualityLevel.unknown,
        monitoring: (level, _, _) => level,
      );

  ConnectivityResult get connectionType => when(
        disconnected: () => ConnectivityResult.none,
        monitoring: (_, type, _) => type,
      );

  int? get latency => when(
        disconnected: () => null,
        monitoring: (_, _, latency) => latency,
      );
}
