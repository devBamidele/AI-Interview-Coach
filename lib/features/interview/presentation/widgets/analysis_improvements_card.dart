import 'package:flutter/material.dart';

import '../../../../common/components/components.dart';
import '../../domain/entities/interview_analysis.dart';

class AnalysisImprovementsCardWidget extends StatelessWidget {
  final List<Improvement> improvements;

  const AnalysisImprovementsCardWidget({
    super.key,
    required this.improvements,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.trending_up_rounded, color: Colors.blue.shade700, size: 24),
              addWidth(8),
              Text(
                'Areas for Improvement',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          addHeight(16),
          ...improvements.asMap().entries.map((entry) {
            final index = entry.key;
            final improvement = entry.value;
            return Padding(
              padding: EdgeInsets.only(bottom: index < improvements.length - 1 ? 16 : 0),
              child: _ImprovementItem(
                improvement: improvement,
                index: index + 1,
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _ImprovementItem extends StatelessWidget {
  final Improvement improvement;
  final int index;

  const _ImprovementItem({
    required this.improvement,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$index',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
          ),
        ),
        addWidth(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                improvement.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
              addHeight(4),
              Text(
                improvement.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),
              if (improvement.timestamp > 0) ...[
                addHeight(6),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                    addWidth(4),
                    Text(
                      _formatTimestamp(improvement.timestamp),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  String _formatTimestamp(double seconds) {
    final minutes = (seconds / 60).floor();
    final secs = (seconds % 60).floor();
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }
}
