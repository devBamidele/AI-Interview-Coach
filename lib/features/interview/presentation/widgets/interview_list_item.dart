import 'package:flutter/material.dart';

import '../../domain/entities/user_interview.dart';

class InterviewListItemWidget extends StatelessWidget {
  final UserInterview interview;
  final VoidCallback onTap;

  const InterviewListItemWidget({
    super.key,
    required this.interview,
    required this.onTap,
  });

  String _formatDate(DateTime dateTime) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${months[dateTime.month - 1]} ${dateTime.day}, ${dateTime.year}';
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.parse(interview.createdAt);
    final formattedDate = _formatDate(dateTime);
    final formattedTime = _formatTime(dateTime);
    final durationMinutes = (interview.duration / 60).round();
    final isMarketSizing = interview.isMarketSizing;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Status Indicator
              Container(
                width: 4,
                height: isMarketSizing ? 80 : 60,
                decoration: BoxDecoration(
                  color: _getStatusColor(interview.status),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 16),

              // Interview Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          formattedDate,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          formattedTime,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        if (isMarketSizing && interview.difficulty != null) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: _getDifficultyColor(
                                interview.difficulty!,
                              ).withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              interview.difficulty!.toUpperCase(),
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: _getDifficultyColor(
                                  interview.difficulty!,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Duration: $durationMinutes min',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    if (interview.caseQuestion != null) ...[
                      const SizedBox(height: 6),
                      Text(
                        interview.caseQuestion!,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),

              // Score Badge
              if (isMarketSizing && interview.overallWeightedScore != null)
                _buildCaseScoreBadge(interview.overallWeightedScore!)
              else
                _buildStatusBadge(interview.status),

              const SizedBox(width: 8),
              Icon(Icons.chevron_right, color: Colors.grey.shade400),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCaseScoreBadge(double score) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: _getCaseScoreColor(score).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            score.toStringAsFixed(1),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: _getCaseScoreColor(score),
            ),
          ),
          Text(
            '/ 5.0',
            style: TextStyle(fontSize: 10, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status == 'processing' ? 'Processing' : 'Failed',
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey.shade600,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'completed':
        return Colors.green;
      case 'processing':
        return Colors.orange;
      case 'failed':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Color _getCaseScoreColor(double score) {
    if (score >= 4.5) return Colors.green;
    if (score >= 3.5) return Colors.blue;
    if (score >= 2.5) return Colors.orange;
    return Colors.red;
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return Colors.green;
      case 'medium':
        return Colors.orange;
      case 'hard':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
