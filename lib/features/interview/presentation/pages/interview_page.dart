import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/app_config.dart';
import '../../application/interview_notifier.dart';
import '../widgets/connection_status_widget.dart';
import '../widgets/interview_controls_widget.dart';
import '../widgets/video_preview_widget.dart';
import '../widgets/transcription_panel.dart';

class InterviewPage extends HookConsumerWidget {
  const InterviewPage({super.key});

  Future<void> _connectToInterview(WidgetRef ref) async {
    await ref.read(interviewProvider.notifier).connect(
          roomName: AppConfig.defaultRoomName,
          participantName: AppConfig.defaultParticipantPrefix,
        );
  }

  Future<void> _disconnectFromInterview(WidgetRef ref) async {
    await ref.read(interviewProvider.notifier).disconnect();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interviewState = ref.watch(interviewProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('AI Interview'),
      ),
      body: Row(
        children: [
          // Left side: Video and controls
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Video Preview
                    VideoPreviewWidget(state: interviewState),

                    const SizedBox(height: 20),

                    // Connection Status
                    ConnectionStatusWidget(state: interviewState),

                    const SizedBox(height: 20),

                    // Interview Controls
                    InterviewControlsWidget(
                      state: interviewState,
                      onConnect: () => _connectToInterview(ref),
                      onDisconnect: () => _disconnectFromInterview(ref),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Right side: Transcription panel
          Expanded(
            flex: 1,
            child: const TranscriptionPanel(),
          ),
        ],
      ),
    );
  }
}
