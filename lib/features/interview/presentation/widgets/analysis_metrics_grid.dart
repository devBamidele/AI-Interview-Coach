import 'package:flutter/material.dart';

import '../../../../common/components/components.dart';
import '../../domain/entities/interview_analysis.dart';

class AnalysisMetricsGridWidget extends StatelessWidget {
  final Metrics metrics;

  const AnalysisMetricsGridWidget({
    super.key,
    required this.metrics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: [
        _MetricCard(
          icon: Icons.speed_rounded,
          label: 'Average Pace',
          value: '${metrics.averagePace}',
          unit: 'WPM',
          color: Colors.green,
        ),
        _MetricCard(
          icon: Icons.text_fields_rounded,
          label: 'Total Words',
          value: '${metrics.totalWords}',
          unit: 'words',
          color: Colors.orange,
        ),
        _MetricCard(
          icon: Icons.warning_amber_rounded,
          label: 'Filler Words',
          value: '${metrics.fillerCount}',
          unit: 'instances',
          color: Colors.red,
        ),
        _MetricCard(
          icon: Icons.pause_circle_outline_rounded,
          label: 'Pauses',
          value: '${metrics.pauseCount}',
          unit: 'times',
          color: Colors.purple,
        ),
      ],
    );
  }
}

class _MetricCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String unit;
  final Color color;

  const _MetricCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 32),
          addHeight(12),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          addHeight(4),
          Text(
            unit,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),
          addHeight(8),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
