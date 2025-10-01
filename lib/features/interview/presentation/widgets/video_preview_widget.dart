import 'package:flutter/material.dart';
import 'package:livekit_client/livekit_client.dart';

import '../../application/interview_state.dart';

class VideoPreviewWidget extends StatelessWidget {
  final InterviewState state;

  const VideoPreviewWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;
    final videoTrack = state.videoTrack;

    if (!isConnected) {
      return const SizedBox.shrink();
    }

    if (videoTrack != null) {
      return Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: VideoTrackRenderer(videoTrack),
        ),
      );
    }

    // Audio only mode
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mic, size: 64, color: Colors.grey),
            SizedBox(height: 8),
            Text('Audio Only', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
