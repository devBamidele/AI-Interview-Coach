import 'package:flutter/material.dart';

import '../../domain/entities/case_analysis.dart';

class MarketSizingScoreCard extends StatelessWidget {
  final CaseAnalysis caseAnalysis;
  final String? caseQuestion;
  final String? difficulty;

  const MarketSizingScoreCard({
    super.key,
    required this.caseAnalysis,
    this.caseQuestion,
    this.difficulty,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade600, Colors.blue.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: .3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.business_center_rounded,
            color: Colors.white,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            '${caseAnalysis.overallWeightedScore.toStringAsFixed(2)}/5.0',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            caseAnalysis.overallLabel,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: .2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'MBB Evaluation Score',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (caseQuestion != null) ...[
            const SizedBox(height: 20),
            Text(
              caseQuestion!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white.withValues(alpha: .9),
              ),
              textAlign: TextAlign.center,
            ),
          ],
          if (difficulty != null) ...[
            const SizedBox(height: 12),
            Chip(
              label: Text(
                difficulty!.toUpperCase(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: _getDifficultyColor(difficulty!),
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ],
        ],
      ),
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return Colors.green.shade100;
      case 'medium':
        return Colors.orange.shade100;
      case 'hard':
        return Colors.red.shade100;
      default:
        return Colors.grey.shade200;
    }
  }
}
