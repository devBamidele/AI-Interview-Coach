import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/transcription_notifier.dart';

/// Widget displaying live transcription with analysis
class TranscriptionPanel extends ConsumerWidget {
  const TranscriptionPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(transcriptionProvider);

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  state.isTranscribing ? Icons.mic : Icons.mic_off,
                  color: state.isTranscribing ? Colors.red : Colors.grey,
                ),
                const SizedBox(width: 8),
                Text(
                  state.isTranscribing ? 'Live Transcription' : 'Transcription',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                if (state.isTranscribing)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'RECORDING',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Transcript content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: state.fullTranscript.isEmpty
                  ? Center(
                      child: Text(
                        state.isTranscribing
                            ? 'Listening...'
                            : 'No transcript yet',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    )
                  : Text(
                      state.fullTranscript,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
            ),
          ),

          // Analysis section
          if (state.latestAnalysis != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Analysis',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  _AnalysisItem(
                    icon: Icons.speed,
                    label: 'Pace',
                    value: state.latestAnalysis!.pace,
                  ),
                  _AnalysisItem(
                    icon: Icons.warning_amber,
                    label: 'Fillers',
                    value: '${state.latestAnalysis!.fillers.length} detected',
                  ),
                  _AnalysisItem(
                    icon: Icons.pause_circle_outline,
                    label: 'Pauses',
                    value: '${state.latestAnalysis!.pauses.length} detected',
                  ),
                  _AnalysisItem(
                    icon: Icons.abc,
                    label: 'Words',
                    value: '${state.latestAnalysis!.totalWords}',
                  ),
                  _AnalysisItem(
                    icon: Icons.timer,
                    label: 'Duration',
                    value: '${state.latestAnalysis!.duration.toStringAsFixed(1)}s',
                  ),
                ],
              ),
            ),

          // Error display
          if (state.error != null)
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.red[50],
              child: Row(
                children: [
                  const Icon(Icons.error_outline, color: Colors.red),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      state.error!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// Widget for displaying individual analysis items
class _AnalysisItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _AnalysisItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Text(
            '$label:',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
