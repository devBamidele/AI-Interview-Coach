import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../application/interview_notifier.dart';
import '../../application/interview_state.dart';
import '../../domain/entities/interview_analysis.dart';

@RoutePage()
class AnalysisResultsPage extends HookConsumerWidget {
  const AnalysisResultsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(interviewProvider);
    final analysis = state.analysis; // From extension method in InterviewStateX

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => context.router.maybePop(),
        ),
        title: const Text(
          'Interview Analysis',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: analysis == null
          ? _buildEmptyState(context)
          : _buildAnalysisContent(context, analysis),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.assessment_outlined,
            size: 80,
            color: Colors.grey.shade300,
          ),
          addHeight(16),
          Text(
            'No analysis available',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
          addHeight(8),
          Text(
            'Complete an interview to see your results',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisContent(
    BuildContext context,
    InterviewAnalysis analysis,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Score Card
          _buildScoreCard(context, analysis),

          addHeight(24),

          // Metrics Grid
          _buildMetricsGrid(context, analysis.metrics),

          addHeight(24),

          // AI Analysis Section
          if (analysis.aiAnalysis != null) ...[
            _buildAnalysisSection(context, analysis.aiAnalysis!),
            addHeight(24),
          ],

          // Transcript
          _buildTranscriptCard(context, analysis.transcript),
        ],
      ),
    );
  }

  Widget _buildScoreCard(BuildContext context, InterviewAnalysis analysis) {
    final score = analysis.aiAnalysis?.overallScore ?? 0.0;

    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Overall Performance',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.9),
              fontWeight: FontWeight.w500,
            ),
          ),
          addHeight(16),
          Text(
            (score * 10).toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1,
            ),
          ),
          addHeight(8),
          Text(
            _getScoreLabel(score),
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (analysis.aiAnalysis?.summary != null) ...[
            addHeight(20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                analysis.aiAnalysis!.summary,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _getScoreLabel(double score) {
    if (score >= 0.9) return 'Excellent!';
    if (score >= 0.8) return 'Great Job!';
    if (score >= 0.7) return 'Good Performance';
    if (score >= 0.6) return 'Room for Improvement';
    return 'Keep Practicing';
  }

  Widget _buildMetricsGrid(BuildContext context, Metrics metrics) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: [
        _buildMetricCard(
          context,
          icon: Icons.speed_rounded,
          label: 'Average Pace',
          value: '${metrics.averagePace}',
          unit: 'WPM',
          color: Colors.green,
        ),
        _buildMetricCard(
          context,
          icon: Icons.text_fields_rounded,
          label: 'Total Words',
          value: '${metrics.totalWords}',
          unit: 'words',
          color: Colors.orange,
        ),
        _buildMetricCard(
          context,
          icon: Icons.warning_amber_rounded,
          label: 'Filler Words',
          value: '${metrics.fillerCount}',
          unit: 'instances',
          color: Colors.red,
        ),
        _buildMetricCard(
          context,
          icon: Icons.pause_circle_outline_rounded,
          label: 'Pauses',
          value: '${metrics.pauseCount}',
          unit: 'times',
          color: Colors.purple,
        ),
      ],
    );
  }

  Widget _buildMetricCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required String unit,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 32),
          addHeight(12),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          addHeight(4),
          Text(
            unit,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),
          addHeight(8),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisSection(BuildContext context, AIAnalysis aiAnalysis) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AI Insights',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
        addHeight(16),

        // Pace Analysis
        if (aiAnalysis.paceAnalysis.isNotEmpty)
          _buildInsightCard(
            context,
            title: 'Pace Analysis',
            content: aiAnalysis.paceAnalysis,
            icon: Icons.speed_rounded,
            color: Colors.blue,
          ),

        addHeight(12),

        // Filler Analysis
        if (aiAnalysis.fillerAnalysis.isNotEmpty)
          _buildInsightCard(
            context,
            title: 'Filler Words Analysis',
            content: aiAnalysis.fillerAnalysis,
            icon: Icons.warning_amber_rounded,
            color: Colors.orange,
          ),

        addHeight(12),

        // Highlights
        if (aiAnalysis.highlights.isNotEmpty) ...[
          _buildHighlightsCard(context, aiAnalysis.highlights),
          addHeight(12),
        ],

        // Improvements
        if (aiAnalysis.improvements.isNotEmpty)
          _buildImprovementsCard(context, aiAnalysis.improvements),
      ],
    );
  }

  Widget _buildInsightCard(
    BuildContext context, {
    required String title,
    required String content,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.2), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
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
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: color, size: 20),
              ),
              addWidth(12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          addHeight(12),
          Text(
            content,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHighlightsCard(
    BuildContext context,
    List<String> highlights,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green.shade200, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star_rounded, color: Colors.green.shade700, size: 24),
              addWidth(8),
              Text(
                'Highlights',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green.shade900,
                ),
              ),
            ],
          ),
          addHeight(12),
          ...highlights.map((highlight) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green.shade600,
                      size: 20,
                    ),
                    addWidth(8),
                    Expanded(
                      child: Text(
                        highlight,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.green.shade900,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildImprovementsCard(
    BuildContext context,
    List<Improvement> improvements,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
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
              Icon(Icons.trending_up_rounded, color: Colors.blue.shade700),
              addWidth(8),
              Text(
                'Areas for Improvement',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          addHeight(16),
          ...improvements.asMap().entries.map((entry) {
            final index = entry.key;
            final improvement = entry.value;
            return Padding(
              padding: EdgeInsets.only(bottom: index < improvements.length - 1 ? 16 : 0),
              child: _buildImprovementItem(context, improvement, index + 1),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildImprovementItem(
    BuildContext context,
    Improvement improvement,
    int index,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$index',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
          ),
        ),
        addWidth(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                improvement.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
              addHeight(4),
              Text(
                improvement.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),
              if (improvement.timestamp > 0) ...[
                addHeight(6),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                    addWidth(4),
                    Text(
                      _formatTimestamp(improvement.timestamp),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTranscriptCard(BuildContext context, String transcript) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
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
              Icon(Icons.transcribe_rounded, color: Colors.grey.shade700),
              addWidth(8),
              Text(
                'Full Transcript',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          addHeight(16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SelectableText(
              transcript,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTimestamp(double seconds) {
    final minutes = (seconds / 60).floor();
    final secs = (seconds % 60).floor();
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }
}
