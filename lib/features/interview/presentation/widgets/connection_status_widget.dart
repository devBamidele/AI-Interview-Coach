import 'package:flutter/material.dart';

import '../../application/interview_state.dart';

class ConnectionStatusWidget extends StatelessWidget {
  final InterviewState state;

  const ConnectionStatusWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;
    final status = state.statusText;
    final errorMessage = state.errorMessage;

    return Column(
      children: [
        // Status indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isConnected ? Colors.green : Colors.grey,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Status: $status',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        // Error display
        if (errorMessage.isNotEmpty) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              border: Border.all(color: Colors.red.shade200),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.error_outline, color: Colors.red.shade700),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    errorMessage,
                    style: TextStyle(
                      color: Colors.red.shade700,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
