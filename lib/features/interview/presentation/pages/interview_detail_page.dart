import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../application/interview_detail_notifier.dart';
import '../../domain/entities/interview_analysis.dart';
import '../widgets/analysis_highlights_card.dart';
import '../widgets/analysis_improvements_card.dart';
import '../widgets/analysis_insight_card.dart';
import '../widgets/analysis_metrics_grid.dart';
import '../widgets/analysis_score_card.dart';
import '../widgets/analysis_transcript_card.dart';
import '../widgets/case_dimension_card.dart';
import '../widgets/case_highlights_card.dart';
import '../widgets/case_overall_score_card.dart';
import '../widgets/case_priority_improvements_card.dart';

@RoutePage()
class InterviewDetailPage extends HookConsumerWidget {
  final String interviewId;

  const InterviewDetailPage({
    super.key,
    @PathParam('interviewId') required this.interviewId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analysisState = ref.watch(interviewDetailProvider(interviewId));

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
      body: analysisState.when(
        data: (analysis) => analysis == null
            ? _buildEmptyState(context)
            : _buildAnalysisContent(context, analysis),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => _buildErrorState(context, error.toString()),
      ),
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
            'Analysis not found or still processing',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline_rounded,
            size: 80,
            color: Colors.red.shade300,
          ),
          addHeight(16),
          Text(
            'Failed to load analysis',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
          addHeight(8),
          Text(
            error,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisContent(
    BuildContext context,
    InterviewAnalysis analysis,
  ) {
    // Check if this is a market sizing interview
    if (analysis.isMarketSizing && analysis.caseAnalysis != null) {
      return _buildMarketSizingAnalysis(context, analysis);
    }

    // Default generic interview analysis
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

  Widget _buildMarketSizingAnalysis(
    BuildContext context,
    InterviewAnalysis analysis,
  ) {
    final caseAnalysis = analysis.caseAnalysis!;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Score Card with Case Question
          CaseOverallScoreCard(
            overallScore: caseAnalysis.overallWeightedScore,
            overallLabel: caseAnalysis.overallLabel,
            caseQuestion: analysis.caseQuestion,
            difficulty: analysis.difficulty,
            candidateAnswer: analysis.candidateAnswer,
          ),

          addHeight(24),

          // Highlights
          if (caseAnalysis.highlights.isNotEmpty) ...[
            CaseHighlightsCard(highlights: caseAnalysis.highlights),
            addHeight(24),
          ],

          // Priority Improvements
          if (caseAnalysis.priorityImprovements.isNotEmpty) ...[
            CasePriorityImprovementsCard(
              improvements: caseAnalysis.priorityImprovements,
            ),
            addHeight(24),
          ],

          // Section Header
          Text(
            'Detailed Evaluation',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          addHeight(16),

          // 1. Structured Problem-Solving (30%)
          CaseDimensionCard(
            title: 'Structured Problem-Solving',
            score: caseAnalysis.structuredProblemSolving.score,
            feedback: caseAnalysis.structuredProblemSolving.feedback,
            color: Colors.purple,
            icon: Icons.account_tree_rounded,
            additionalInfo: [
              _buildInfoChips([
                _InfoChip(
                  'Framework: ${caseAnalysis.structuredProblemSolving.frameworkDetected}',
                  Icons.construction_rounded,
                ),
                _InfoChip(
                  caseAnalysis.structuredProblemSolving.meceApplied
                      ? 'MECE Applied'
                      : 'MECE Not Applied',
                  caseAnalysis.structuredProblemSolving.meceApplied
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
                _InfoChip(
                  caseAnalysis.structuredProblemSolving.clarifyingQuestionsAsked
                      ? 'Asked Clarifying Questions'
                      : 'No Clarifying Questions',
                  caseAnalysis.structuredProblemSolving.clarifyingQuestionsAsked
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
              ]),
            ],
          ),

          // 2. Business Judgment (25%)
          CaseDimensionCard(
            title: 'Business Judgment',
            score: caseAnalysis.businessJudgment.score,
            feedback: caseAnalysis.businessJudgment.feedback,
            color: Colors.indigo,
            icon: Icons.lightbulb_outline_rounded,
            additionalInfo: [
              _buildInfoChips([
                _InfoChip(
                  caseAnalysis.businessJudgment.assumptionsStated
                      ? 'Assumptions Stated'
                      : 'Assumptions Not Stated',
                  caseAnalysis.businessJudgment.assumptionsStated
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
                _InfoChip(
                  caseAnalysis.businessJudgment.assumptionsJustified
                      ? 'Assumptions Justified'
                      : 'Assumptions Not Justified',
                  caseAnalysis.businessJudgment.assumptionsJustified
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
              ]),
              if (caseAnalysis.businessJudgment.assumptionQuality.isNotEmpty)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.indigo.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.indigo.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Text(
                    caseAnalysis.businessJudgment.assumptionQuality,
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
            ],
          ),

          // 3. Quantitative Skills (20%)
          CaseDimensionCard(
            title: 'Quantitative Skills',
            score: caseAnalysis.quantitativeSkills.score,
            feedback: caseAnalysis.quantitativeSkills.feedback,
            color: Colors.teal,
            icon: Icons.calculate_rounded,
            additionalInfo: [
              _buildInfoChips([
                _InfoChip(
                  caseAnalysis.quantitativeSkills.mathShownStepByStep
                      ? 'Step-by-Step Math'
                      : 'No Step-by-Step',
                  caseAnalysis.quantitativeSkills.mathShownStepByStep
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
                _InfoChip(
                  caseAnalysis.quantitativeSkills.mathVerbalized
                      ? 'Math Verbalized'
                      : 'Math Not Verbalized',
                  caseAnalysis.quantitativeSkills.mathVerbalized
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
                _InfoChip(
                  caseAnalysis.quantitativeSkills.calculationsAccurate
                      ? 'Accurate Calculations'
                      : 'Calculation Errors',
                  caseAnalysis.quantitativeSkills.calculationsAccurate
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
              ]),
            ],
          ),

          // 4. Communication (15%)
          CaseDimensionCard(
            title: 'Communication',
            score: caseAnalysis.communication.score,
            feedback: caseAnalysis.communication.feedback,
            color: Colors.blue,
            icon: Icons.chat_bubble_outline_rounded,
          ),

          // 5. Sanity Check (10%)
          CaseDimensionCard(
            title: 'Sanity Check',
            score: caseAnalysis.sanityCheck.score,
            feedback: caseAnalysis.sanityCheck.feedback,
            color: Colors.amber,
            icon: Icons.fact_check_rounded,
            additionalInfo: [
              _buildInfoChips([
                _InfoChip(
                  caseAnalysis.sanityCheck.sanityCheckPerformed
                      ? 'Sanity Check Performed'
                      : 'No Sanity Check',
                  caseAnalysis.sanityCheck.sanityCheckPerformed
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
                _InfoChip(
                  caseAnalysis.sanityCheck.sanityCheckVerbalized
                      ? 'Verbalized Check'
                      : 'Not Verbalized',
                  caseAnalysis.sanityCheck.sanityCheckVerbalized
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                ),
              ]),
            ],
          ),

          // Metrics Grid
          Text(
            'Speech Metrics',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          addHeight(16),
          AnalysisMetricsGridWidget(metrics: analysis.metrics),

          addHeight(24),

          // Transcript
          AnalysisTranscriptCardWidget(transcript: analysis.transcript),
        ],
      ),
    );
  }

  Widget _buildInfoChips(List<_InfoChip> chips) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: chips
          .map(
            (chip) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    chip.icon,
                    size: 14,
                    color: chip.icon == Icons.check_circle_rounded
                        ? Colors.green
                        : chip.icon == Icons.cancel_rounded
                        ? Colors.red
                        : Colors.grey.shade600,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    chip.label,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
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

class _InfoChip {
  final String label;
  final IconData icon;

  _InfoChip(this.label, this.icon);
}
