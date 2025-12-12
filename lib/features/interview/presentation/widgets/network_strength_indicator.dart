import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ai_interview_mvp/core/network/network_quality.dart';
import 'package:ai_interview_mvp/features/interview/application/network_quality_notifier.dart';
import 'package:ai_interview_mvp/features/interview/application/network_quality_state.dart';

/// A widget that displays the current network quality with signal bars and connection type icon
class NetworkStrengthIndicator extends ConsumerWidget {
  const NetworkStrengthIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final networkQuality = ref.watch(networkQualityProvider);

    if (networkQuality is Monitoring) {
      return _buildIndicator(
        context,
        networkQuality.level,
        networkQuality.connectionType,
        networkQuality.latencyMs,
      );
    }

    return _buildDisconnectedIcon();
  }

  /// Builds the indicator when disconnected
  Widget _buildDisconnectedIcon() {
    return Icon(
      Icons.signal_wifi_off,
      size: 20,
      color: Colors.grey.shade400,
    );
  }

  /// Builds the full indicator with connection type and signal bars
  Widget _buildIndicator(
    BuildContext context,
    NetworkQualityLevel level,
    ConnectivityResult type,
    int? latency,
  ) {
    return Tooltip(
      message: _buildTooltipMessage(level, type, latency),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildConnectionTypeIcon(type, level),
          const SizedBox(width: 4),
          _buildSignalBars(level),
        ],
      ),
    );
  }

  /// Builds the tooltip message with detailed information
  String _buildTooltipMessage(
    NetworkQualityLevel level,
    ConnectivityResult type,
    int? latency,
  ) {
    final buffer = StringBuffer();
    buffer.write('Connection: ${_getLevelText(level)}');
    buffer.write('\nType: ${_getConnectionTypeText(type)}');
    if (latency != null) {
      buffer.write('\nLatency: ${latency}ms');
    }
    return buffer.toString();
  }

  /// Gets human-readable text for the quality level
  String _getLevelText(NetworkQualityLevel level) {
    switch (level) {
      case NetworkQualityLevel.excellent:
        return 'Excellent';
      case NetworkQualityLevel.good:
        return 'Good';
      case NetworkQualityLevel.poor:
        return 'Poor';
      case NetworkQualityLevel.unknown:
        return 'Unknown';
    }
  }

  /// Gets human-readable text for connection type
  String _getConnectionTypeText(ConnectivityResult type) {
    switch (type) {
      case ConnectivityResult.wifi:
        return 'WiFi';
      case ConnectivityResult.mobile:
        return 'Mobile';
      case ConnectivityResult.ethernet:
        return 'Ethernet';
      case ConnectivityResult.vpn:
        return 'VPN';
      case ConnectivityResult.bluetooth:
        return 'Bluetooth';
      case ConnectivityResult.other:
        return 'Other';
      case ConnectivityResult.none:
        return 'None';
    }
  }

  /// Builds the connection type icon with color coding
  Widget _buildConnectionTypeIcon(
    ConnectivityResult type,
    NetworkQualityLevel level,
  ) {
    IconData icon;
    switch (type) {
      case ConnectivityResult.wifi:
        icon = Icons.wifi;
        break;
      case ConnectivityResult.mobile:
        icon = Icons.signal_cellular_alt;
        break;
      case ConnectivityResult.ethernet:
        icon = Icons.settings_ethernet;
        break;
      case ConnectivityResult.vpn:
        icon = Icons.vpn_lock;
        break;
      default:
        icon = Icons.signal_wifi_off;
    }

    return Icon(
      icon,
      size: 18,
      color: _getColorForLevel(level),
    );
  }

  /// Builds the signal strength bars (1-4 bars)
  Widget _buildSignalBars(NetworkQualityLevel level) {
    final bars = level.bars;
    final color = _getColorForLevel(level);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(4, (index) {
        final isActive = index < bars;
        final barHeight = 12.0 + (index * 3.0); // Progressive height: 12, 15, 18, 21

        return Container(
          width: 3,
          height: barHeight,
          margin: const EdgeInsets.only(left: 2),
          decoration: BoxDecoration(
            color: isActive ? color : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(1.5),
          ),
        );
      }),
    );
  }

  /// Gets the color based on quality level
  Color _getColorForLevel(NetworkQualityLevel level) {
    switch (level) {
      case NetworkQualityLevel.excellent:
        return Colors.green;
      case NetworkQualityLevel.good:
        return Colors.yellow.shade700;
      case NetworkQualityLevel.poor:
        return Colors.orange;
      case NetworkQualityLevel.unknown:
        return Colors.red;
    }
  }
}
