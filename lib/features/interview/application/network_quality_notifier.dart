import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_interview_mvp/core/constants/app_config.dart';
import 'package:ai_interview_mvp/core/constants/network_config.dart';
import 'package:ai_interview_mvp/core/network/network_quality.dart';
import 'package:ai_interview_mvp/core/network/network_quality_datasource.dart';
import 'package:ai_interview_mvp/core/network/network_quality_repository.dart';
import 'package:ai_interview_mvp/features/interview/application/network_quality_state.dart';

part 'network_quality_notifier.g.dart';

/// Provider for the network quality datasource
@riverpod
NetworkQualityDataSource networkQualityDataSource(Ref ref) {
  return NetworkQualityDataSourceImpl();
}

/// Provider for the network quality repository
@riverpod
NetworkQualityRepository networkQualityRepository(Ref ref) {
  final dataSource = ref.watch(networkQualityDataSourceProvider);
  return NetworkQualityRepositoryImpl(dataSource: dataSource);
}

/// Notifier that manages network quality monitoring during interviews
@riverpod
class NetworkQualityNotifier extends _$NetworkQualityNotifier {
  Timer? _pollTimer;
  StreamSubscription? _connectivitySubscription;
  NetworkQualityLevel _currentLevel = NetworkQualityLevel.unknown;

  @override
  NetworkQualityState build() {
    // Clean up resources when the notifier is disposed
    ref.onDispose(() {
      _stopAllMonitoring();
    });

    return const NetworkQualityState.disconnected();
  }

  /// Starts monitoring network quality for an active LiveKit room
  void startMonitoring(Room room) {
    // Initialize with current quality from room
    final initialQuality = room.localParticipant?.connectionQuality ??
        ConnectionQuality.unknown;
    _currentLevel = NetworkQualityLevel.fromLiveKitQuality(initialQuality);

    // Start all monitoring streams
    _listenToLiveKitQuality(room);
    _startLatencyPolling();
    _listenToConnectivityChanges();

    // Update state immediately
    _updateState();
  }

  /// Stops all network quality monitoring
  void stopMonitoring() {
    _stopAllMonitoring();
    state = const NetworkQualityState.disconnected();
  }

  /// Listens to LiveKit connection quality events
  void _listenToLiveKitQuality(Room room) {
    // Listen to connection quality updates
    room.events.on<ParticipantConnectionQualityUpdatedEvent>((event) {
      // Only track the local participant's quality
      if (event.participant.sid == room.localParticipant?.sid) {
        final newLevel =
            NetworkQualityLevel.fromLiveKitQuality(event.connectionQuality);

        // Only update if the level changed (debouncing)
        if (newLevel != _currentLevel) {
          _currentLevel = newLevel;
          _updateState();
        }
      }
    });
  }

  /// Starts periodic latency polling
  void _startLatencyPolling() {
    _pollTimer?.cancel();

    // Poll immediately, then on interval
    _measureLatency();

    _pollTimer = Timer.periodic(
      NetworkConfig.latencyPollInterval,
      (_) => _measureLatency(),
    );
  }

  /// Listens to connectivity type changes (WiFi, Mobile, etc.)
  void _listenToConnectivityChanges() {
    _connectivitySubscription?.cancel();

    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
      (results) {
        if (results.isNotEmpty) {
          _updateState();
        }
      },
    );
  }

  /// Measures current latency and updates state
  Future<void> _measureLatency() async {
    final repository = ref.read(networkQualityRepositoryProvider);

    final result = await repository.getNetworkMetrics(
      serverUrl: AppConfig.backendUrl,
      currentLevel: _currentLevel,
    );

    result.fold(
      (failure) {
        // On failure, update state without latency data
        _updateState();
      },
      (metrics) {
        // Update state with new metrics
        state = NetworkQualityState.monitoring(
          level: metrics.level,
          connectionType: metrics.connectionType,
          latencyMs: metrics.latencyMs,
        );
      },
    );
  }

  /// Updates state with current quality level and connection type
  void _updateState() {
    if (state is! Monitoring) {
      // If we're not already monitoring, get fresh connection type
      _measureLatency();
      return;
    }

    // Preserve existing latency and connection type if available
    final currentState = state as Monitoring;
    state = NetworkQualityState.monitoring(
      level: _currentLevel,
      connectionType: currentState.connectionType,
      latencyMs: currentState.latencyMs,
    );
  }

  /// Stops all monitoring streams and timers
  void _stopAllMonitoring() {
    _pollTimer?.cancel();
    _connectivitySubscription?.cancel();

    _pollTimer = null;
    _connectivitySubscription = null;
  }
}
