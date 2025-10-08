import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/router/app_router.dart';
import '../../application/interview_state.dart';

class InterviewControlsWidget extends StatelessWidget {
  final InterviewState state;
  final VoidCallback onConnect;
  final VoidCallback onDisconnect;
  final VoidCallback? onComplete;

  const InterviewControlsWidget({
    super.key,
    required this.state,
    required this.onConnect,
    required this.onDisconnect,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;
    final isCompleting = state.isCompleting;
    final isAnalyzing = state.isAnalyzing;

    // Show nothing during completion/analysis
    if (isCompleting || isAnalyzing) {
      return Column(
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            state.statusText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      );
    }

    // Show analysis complete state with View Results button
    if (state.isAnalysisComplete) {
      final interviewId = state.interviewId;
      return Column(
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 48),
          const SizedBox(height: 16),
          Text(
            'Interview Complete!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Your analysis is ready',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: interviewId != null
                ? () {
                    context.router.push(
                      InterviewDetailRoute(interviewId: interviewId),
                    );
                  }
                : null,
            icon: const Icon(Icons.assessment_rounded),
            label: const Text('View Results'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
          ),
        ],
      );
    }

    // Show connect button
    if (!isConnected) {
      return ElevatedButton.icon(
        onPressed: onConnect,
        icon: const Icon(Icons.call),
        label: const Text("Join Interview"),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
      );
    }

    // Show complete and disconnect buttons when connected
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Complete Interview Button (Primary action)
        ElevatedButton.icon(
          onPressed: onComplete,
          icon: const Icon(Icons.check_circle_outline),
          label: const Text("Complete Interview"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
        ),
        const SizedBox(width: 16),
        // Disconnect Button (Secondary action)
        OutlinedButton.icon(
          onPressed: onDisconnect,
          icon: const Icon(Icons.call_end),
          label: const Text("Cancel"),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
        ),
      ],
    );
  }
}
