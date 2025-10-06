import 'package:flutter/material.dart';

import '../../../../common/components/components.dart';
import '../../domain/entities/interview_analysis.dart';

class AnalysisScoreCardWidget extends StatelessWidget {
  final InterviewAnalysis analysis;

  const AnalysisScoreCardWidget({
    super.key,
    required this.analysis,
  });

  @override
  Widget build(BuildContext context) {
    final score = analysis.aiAnalysis?.overallScore ?? 0.0;

    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Overall Performance',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.9),
              fontWeight: FontWeight.w500,
            ),
          ),
          addHeight(16),
          Text(
            (score * 10).toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1,
            ),
          ),
          addHeight(8),
          Text(
            _getScoreLabel(score),
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (analysis.aiAnalysis?.summary != null) ...[
            addHeight(20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                analysis.aiAnalysis!.summary,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _getScoreLabel(double score) {
    if (score >= 0.9) return 'Excellent!';
    if (score >= 0.8) return 'Great Job!';
    if (score >= 0.7) return 'Good Performance';
    if (score >= 0.6) return 'Room for Improvement';
    return 'Keep Practicing';
  }
}
