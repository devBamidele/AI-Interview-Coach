import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../application/interview_notifier.dart';
import '../../application/interview_state.dart';
import '../../domain/entities/interview_analysis.dart';
import '../../domain/entities/case_analysis.dart';
import '../widgets/analysis_highlights_card.dart';
import '../widgets/analysis_improvements_card.dart';
import '../widgets/analysis_insight_card.dart';
import '../widgets/analysis_metrics_grid.dart';
import '../widgets/analysis_score_card.dart';
import '../widgets/analysis_transcript_card.dart';
import '../widgets/dimension_card_widget.dart';
import '../widgets/detail_row_widget.dart';
import '../widgets/market_sizing_score_card.dart';

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
          // Overall Score Card - different for market sizing vs generic
          if (analysis.isMarketSizing)
            MarketSizingScoreCard(
              caseAnalysis: analysis.caseAnalysis!,
              caseQuestion: analysis.caseQuestion,
              difficulty: analysis.difficulty,
            )
          else
            AnalysisScoreCardWidget(analysis: analysis),

          addHeight(24),

          // Main Content - different based on interview type
          if (analysis.isMarketSizing)
            _buildMarketSizingContent(context, analysis)
          else
            _buildGenericContent(context, analysis),
        ],
      ),
    );
  }

  Widget _buildMarketSizingContent(
    BuildContext context,
    InterviewAnalysis analysis,
  ) {
    final caseAnalysis = analysis.caseAnalysis!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Highlights Section
        if (caseAnalysis.highlights.isNotEmpty) ...[
          _buildSectionTitle(context, 'Highlights'),
          addHeight(12),
          _buildHighlightsCard(context, caseAnalysis.highlights),
          addHeight(24),
        ],

        // 5 MBB Dimensions
        _buildSectionTitle(context, 'MBB Evaluation Criteria'),
        addHeight(12),

        // Dimension 1: Structured Problem-Solving (30%)
        DimensionCardWidget(
          title: 'Structured Problem-Solving',
          weight: 30,
          score: caseAnalysis.structuredProblemSolving.score,
          feedback: caseAnalysis.structuredProblemSolving.feedback,
          details: [
            DetailRowWidget(
              label: 'Framework',
              value: caseAnalysis.structuredProblemSolving.frameworkDetected,
            ),
            DetailRowWidget(
              label: 'MECE Applied',
              value: caseAnalysis.structuredProblemSolving.meceApplied
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.structuredProblemSolving.meceApplied
                  ? Colors.green
                  : Colors.orange,
            ),
            DetailRowWidget(
              label: 'Clarifying Questions',
              value: caseAnalysis.structuredProblemSolving.clarifyingQuestionsAsked
                  ? 'Yes'
                  : 'No',
              valueColor:
                  caseAnalysis.structuredProblemSolving.clarifyingQuestionsAsked
                      ? Colors.green
                      : Colors.orange,
            ),
          ],
        ),
        addHeight(12),

        // Dimension 2: Business Judgment (25%)
        DimensionCardWidget(
          title: 'Business Judgment & Assumptions',
          weight: 25,
          score: caseAnalysis.businessJudgment.score,
          feedback: caseAnalysis.businessJudgment.feedback,
          details: [
            DetailRowWidget(
              label: 'Assumptions Stated',
              value: caseAnalysis.businessJudgment.assumptionsStated
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.businessJudgment.assumptionsStated
                  ? Colors.green
                  : Colors.orange,
            ),
            DetailRowWidget(
              label: 'Assumptions Justified',
              value: caseAnalysis.businessJudgment.assumptionsJustified
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.businessJudgment.assumptionsJustified
                  ? Colors.green
                  : Colors.orange,
            ),
            if (caseAnalysis.businessJudgment.assumptionQuality.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  caseAnalysis.businessJudgment.assumptionQuality,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey.shade700,
                      ),
                ),
              ),
          ],
        ),
        addHeight(12),

        // Dimension 3: Quantitative Skills (20%)
        DimensionCardWidget(
          title: 'Quantitative Skills',
          weight: 20,
          score: caseAnalysis.quantitativeSkills.score,
          feedback: caseAnalysis.quantitativeSkills.feedback,
          details: [
            DetailRowWidget(
              label: 'Step-by-Step',
              value: caseAnalysis.quantitativeSkills.mathShownStepByStep
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.quantitativeSkills.mathShownStepByStep
                  ? Colors.green
                  : Colors.orange,
            ),
            DetailRowWidget(
              label: 'Verbalized',
              value: caseAnalysis.quantitativeSkills.mathVerbalized
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.quantitativeSkills.mathVerbalized
                  ? Colors.green
                  : Colors.orange,
            ),
            DetailRowWidget(
              label: 'Accurate',
              value: caseAnalysis.quantitativeSkills.calculationsAccurate
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.quantitativeSkills.calculationsAccurate
                  ? Colors.green
                  : Colors.orange,
            ),
          ],
        ),
        addHeight(12),

        // Dimension 4: Communication (15%)
        DimensionCardWidget(
          title: 'Communication',
          weight: 15,
          score: caseAnalysis.communication.score,
          feedback: caseAnalysis.communication.feedback,
          details: [
            if (caseAnalysis.communication.paceAnalysis != null)
              DetailRowWidget(
                label: 'Pace',
                value: caseAnalysis.communication.paceAnalysis!,
              ),
            if (caseAnalysis.communication.fillersCount != null)
              DetailRowWidget(
                label: 'Filler Words',
                value: '${caseAnalysis.communication.fillersCount}',
              ),
            if (caseAnalysis.communication.pausesCount != null)
              DetailRowWidget(
                label: 'Long Pauses',
                value: '${caseAnalysis.communication.pausesCount}',
              ),
          ],
        ),
        addHeight(12),

        // Dimension 5: Sanity Check (10%)
        DimensionCardWidget(
          title: 'Sanity Check',
          weight: 10,
          score: caseAnalysis.sanityCheck.score,
          feedback: caseAnalysis.sanityCheck.feedback,
          details: [
            DetailRowWidget(
              label: 'Performed',
              value: caseAnalysis.sanityCheck.sanityCheckPerformed
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.sanityCheck.sanityCheckPerformed
                  ? Colors.green
                  : Colors.orange,
            ),
            DetailRowWidget(
              label: 'Verbalized',
              value: caseAnalysis.sanityCheck.sanityCheckVerbalized
                  ? 'Yes'
                  : 'No',
              valueColor: caseAnalysis.sanityCheck.sanityCheckVerbalized
                  ? Colors.green
                  : Colors.orange,
            ),
          ],
        ),
        addHeight(24),

        // Priority Improvements
        if (caseAnalysis.priorityImprovements.isNotEmpty) ...[
          _buildSectionTitle(context, 'Priority Improvements'),
          addHeight(12),
          ...caseAnalysis.priorityImprovements.map((improvement) {
            return _buildImprovementCard(context, improvement);
          }),
          addHeight(24),
        ],

        // Transcript
        _buildSectionTitle(context, 'Full Transcript'),
        addHeight(12),
        AnalysisTranscriptCardWidget(transcript: analysis.transcript),
      ],
    );
  }

  Widget _buildGenericContent(
    BuildContext context,
    InterviewAnalysis analysis,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Metrics Grid
        AnalysisMetricsGridWidget(metrics: analysis.metrics),

        addHeight(24),

        // AI Analysis Section
        if (analysis.aiAnalysis != null) ...[
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
          if (analysis.aiAnalysis!.paceAnalysis.isNotEmpty)
            AnalysisInsightCardWidget(
              title: 'Pace Analysis',
              content: analysis.aiAnalysis!.paceAnalysis,
              icon: Icons.speed_rounded,
              color: Colors.blue,
            ),

          addHeight(12),

          // Filler Analysis
          if (analysis.aiAnalysis!.fillerAnalysis.isNotEmpty)
            AnalysisInsightCardWidget(
              title: 'Filler Words Analysis',
              content: analysis.aiAnalysis!.fillerAnalysis,
              icon: Icons.warning_amber_rounded,
              color: Colors.orange,
            ),

          addHeight(12),

          // Highlights
          if (analysis.aiAnalysis!.highlights.isNotEmpty) ...[
            AnalysisHighlightsCardWidget(
                highlights: analysis.aiAnalysis!.highlights),
            addHeight(12),
          ],

          // Improvements
          if (analysis.aiAnalysis!.improvements.isNotEmpty) ...[
            AnalysisImprovementsCardWidget(
                improvements: analysis.aiAnalysis!.improvements),
            addHeight(24),
          ],
        ],

        // Transcript
        AnalysisTranscriptCardWidget(transcript: analysis.transcript),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade800,
      ),
    );
  }

  Widget _buildHighlightsCard(BuildContext context, List<String> highlights) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: highlights.map((highlight) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green.shade700,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    highlight,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildImprovementCard(
    BuildContext context,
    PriorityImprovement improvement,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.orange.shade100,
          child: Icon(
            Icons.lightbulb_outline_rounded,
            color: Colors.orange.shade800,
          ),
        ),
        title: Text(
          improvement.feedback,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          'Timestamp: ${improvement.timestamp}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey.shade600,
              ),
        ),
      ),
    );
  }
}
