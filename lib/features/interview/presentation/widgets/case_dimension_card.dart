import 'package:flutter/material.dart';

import '../../../../common/utils/text_formatter.dart';

class CaseDimensionCard extends StatelessWidget {
  final String title;
  final int score;
  final String feedback;
  final Color color;
  final IconData icon;
  final List<Widget>? additionalInfo;

  const CaseDimensionCard({
    super.key,
    required this.title,
    required this.score,
    required this.feedback,
    required this.color,
    required this.icon,
    this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
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
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade900,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              _buildScoreBadge(),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            formatFeedbackWithParagraphs(feedback),
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'SF Pro Rounded',
              fontWeight: FontWeight.w500,
              height: 1.6,
              color: Colors.grey.shade700,
            ),
          ),
          if (additionalInfo != null && additionalInfo!.isNotEmpty) ...[
            const SizedBox(height: 12),
            ...additionalInfo!,
          ],
        ],
      ),
    );
  }

  Widget _buildScoreBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getScoreColor().withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            score.toString(),
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: _getScoreColor(),
            ),
          ),
          Text(
            ' / 5',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Color _getScoreColor() {
    if (score >= 4) return Colors.green;
    if (score >= 3) return Colors.blue;
    if (score >= 2) return Colors.orange;
    return Colors.red;
  }
}
