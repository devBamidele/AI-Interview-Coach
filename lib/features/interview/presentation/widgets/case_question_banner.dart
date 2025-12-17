import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:livekit_client/livekit_client.dart';

class CaseQuestionBanner extends StatelessWidget {
  final Room? room;

  const CaseQuestionBanner({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    if (room == null || room!.metadata == null || room!.metadata!.isEmpty) {
      return const SizedBox.shrink();
    }

    try {
      final metadataJson = jsonDecode(room!.metadata!);
      final caseQuestion = metadataJson['caseQuestion'] as String?;
      final difficulty = metadataJson['difficulty'] as String?;

      if (caseQuestion == null) return const SizedBox.shrink();

      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          border: Border(
            bottom: BorderSide(
              color: Colors.blue.shade200,
              width: 1,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.business_center_rounded,
                  color: Colors.blue.shade800,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Market Sizing Case',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,
                      ),
                ),
                const Spacer(),
                if (difficulty != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: _getDifficultyColor(difficulty),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      difficulty.toUpperCase(),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              caseQuestion,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      );
    } catch (e) {
      return const SizedBox.shrink();
    }
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
