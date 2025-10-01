import 'package:flutter/material.dart';

import '../../application/interview_state.dart';

class InterviewControlsWidget extends StatelessWidget {
  final InterviewState state;
  final VoidCallback onConnect;
  final VoidCallback onDisconnect;

  const InterviewControlsWidget({
    super.key,
    required this.state,
    required this.onConnect,
    required this.onDisconnect,
  });

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;

    if (!isConnected) {
      return ElevatedButton.icon(
        onPressed: onConnect,
        icon: const Icon(Icons.call),
        label: const Text("Join Interview"),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
        ),
      );
    }

    return ElevatedButton.icon(
      onPressed: onDisconnect,
      icon: const Icon(Icons.call_end),
      label: const Text("End Call"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
      ),
    );
  }
}
