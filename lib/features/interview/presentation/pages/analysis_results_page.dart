import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../application/interview_notifier.dart';
import '../../application/interview_state.dart';
import '../../domain/entities/interview_analysis.dart';
import '../widgets/analysis_highlights_card.dart';
import '../widgets/analysis_improvements_card.dart';
import '../widgets/analysis_insight_card.dart';
import '../widgets/analysis_metrics_grid.dart';
import '../widgets/analysis_score_card.dart';
import '../widgets/analysis_transcript_card.dart';

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
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
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
          AnalysisScoreCardWidget(analysis: analysis),

          addHeight(24),

          // Metrics Grid
          AnalysisMetricsGridWidget(metrics: analysis.metrics),

          addHeight(24),

          // AI Analysis Section
          if (analysis.aiAnalysis != null) ...[
            _buildAnalysisSection(context, analysis.aiAnalysis!),
            addHeight(24),
          ],

          // Transcript
          AnalysisTranscriptCardWidget(transcript: analysis.transcript),
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
          AnalysisInsightCardWidget(
            title: 'Pace Analysis',
            content: aiAnalysis.paceAnalysis,
            icon: Icons.speed_rounded,
            color: Colors.blue,
          ),

        addHeight(12),

        // Filler Analysis
        if (aiAnalysis.fillerAnalysis.isNotEmpty)
          AnalysisInsightCardWidget(
            title: 'Filler Words Analysis',
            content: aiAnalysis.fillerAnalysis,
            icon: Icons.warning_amber_rounded,
            color: Colors.orange,
          ),

        addHeight(12),

        // Highlights
        if (aiAnalysis.highlights.isNotEmpty) ...[
          AnalysisHighlightsCardWidget(highlights: aiAnalysis.highlights),
          addHeight(12),
        ],

        // Improvements
        if (aiAnalysis.improvements.isNotEmpty)
          AnalysisImprovementsCardWidget(improvements: aiAnalysis.improvements),
      ],
    );
  }
}
