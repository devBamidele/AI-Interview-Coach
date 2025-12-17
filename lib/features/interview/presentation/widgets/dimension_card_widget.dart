import 'package:flutter/material.dart';

class DimensionCardWidget extends StatelessWidget {
  final String title;
  final int weight;
  final int score;
  final String feedback;
  final List<Widget> details;

  const DimensionCardWidget({
    super.key,
    required this.title,
    required this.weight,
    required this.score,
    required this.feedback,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          leading: _buildScoreBadge(),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          subtitle: Text(
            'Weight: $weight%',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade600,
                ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    feedback,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          height: 1.5,
                        ),
                  ),
                  if (details.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    ...details,
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreBadge() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: _getScoreColor(score.toDouble()),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$score',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color _getScoreColor(double score) {
    if (score >= 4.5) return Colors.green.shade700;
    if (score >= 3.5) return Colors.green.shade500;
    if (score >= 2.5) return Colors.orange.shade600;
    if (score >= 1.5) return Colors.orange.shade800;
    return Colors.red.shade700;
  }
}
