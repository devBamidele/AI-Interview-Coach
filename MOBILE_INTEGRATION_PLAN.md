# Mobile Integration Plan: Market Sizing Interview Coach

## Executive Summary

### System Status
✅ **Backend (NestJS)** - Complete with MBB evaluation (5-dimension scoring)
✅ **Transcription Service** - Real-time STT with LiveKit metadata integration
✅ **Voice Agent** - Market sizing questions with function-based metadata setting
🔲 **Mobile Frontend (Flutter)** - Ready for market sizing specialization

### What's Already Built
The Flutter app has a fully functional generic interview system:
- ✅ LiveKit room integration with video/audio
- ✅ Real-time transcription display
- ✅ Interview results screen with AI analysis
- ✅ Clean architecture (domain/data/presentation layers)
- ✅ Riverpod state management
- ✅ Polling-based analysis retrieval

### What Needs Building
Transform the existing generic interview UI to support market sizing cases:
1. **Update data models** to parse 5-dimension MBB evaluation
2. **Redesign results screen** to display structured case analysis
3. **Enhance interview room** to show case question and countdown timer
4. **Maintain backwards compatibility** with generic interviews

---

## Backend API Contract

### Endpoint: `GET /api/interviews/:id`

**Current Response (Generic Interview):**
```json
{
  "id": "673a2b1c9f4e5d6a7b8c9d0e",
  "userId": "user123",
  "createdAt": "2025-12-16T10:30:00.000Z",
  "duration": 584.32,
  "transcript": "...",
  "metrics": {
    "totalWords": 1247,
    "averagePace": 145,
    "paceTimeline": [...],
    "fillers": [...],
    "pauses": [...]
  },
  "aiAnalysis": "Overall feedback text..."
}
```

**New Response Structure (Market Sizing Interview):**
```json
{
  "id": "673a2b1c9f4e5d6a7b8c9d0e",
  "userId": "user123",
  "createdAt": "2025-12-16T10:30:00.000Z",
  "duration": 584.32,
  "transcript": "I'll use a top-down approach...",
  "recordingUrl": null,

  "metrics": {
    "totalWords": 1247,
    "averagePace": 145,
    "paceTimeline": [
      {"timestamp": 0, "wpm": 152, "segmentStart": 0, "segmentEnd": 10}
    ],
    "fillers": [
      {"word": "um", "timestamp": 12.5, "contextBefore": "so I think", "contextAfter": "the population"}
    ],
    "pauses": [
      {"duration": 2.3, "timestamp": 45.2}
    ]
  },

  "caseQuestion": "How many pizzas are consumed in New York City annually?",
  "difficulty": "easy",
  "candidateAnswer": "My final answer is 192 million pizzas per year",

  "caseAnalysis": {
    "structuredProblemSolving": {
      "score": 4,
      "feedback": "Strong framework articulation at 00:15...",
      "frameworkDetected": "top-down",
      "meceApplied": true,
      "clarifyingQuestionsAsked": true
    },
    "businessJudgment": {
      "score": 3,
      "feedback": "Assumptions explicitly stated...",
      "assumptionsStated": true,
      "assumptionsJustified": true,
      "assumptionQuality": "Examples: 'I assume 8M people' (02:15)..."
    },
    "quantitativeSkills": {
      "score": 4,
      "feedback": "Calculations verbalized step-by-step...",
      "mathShownStepByStep": true,
      "mathVerbalized": true,
      "calculationsAccurate": true
    },
    "communication": {
      "score": 4,
      "feedback": "Excellent pace at 145 WPM...",
      "paceAnalysis": "145 WPM - Optimal",
      "fillersCount": 3,
      "pausesCount": 1
    },
    "sanityCheck": {
      "score": 5,
      "feedback": "Outstanding sanity check at 04:15...",
      "sanityCheckPerformed": true,
      "sanityCheckVerbalized": true
    },
    "overallWeightedScore": 3.85,
    "overallLabel": "Very Good",
    "priorityImprovements": [
      {
        "timestamp": "02:45",
        "feedback": "Strengthen assumption justification..."
      }
    ],
    "highlights": [
      "Asked clarifying question immediately",
      "Clear MECE framework with top-down approach"
    ]
  },

  "status": "completed"
}
```

**Key Differences:**
- Generic interviews have `aiAnalysis` string
- Market sizing interviews have `caseAnalysis` object with 5 dimensions
- Additional fields: `caseQuestion`, `difficulty`, `candidateAnswer`
- Check for `caseAnalysis` presence to determine interview type

---

## Implementation Phases

### Phase 1: Data Models (Foundation)
**Goal:** Parse and represent market sizing interview data

**Priority:** 🔴 HIGH (blocks everything else)
**Estimated Effort:** 2-3 hours

---

#### 1.1 Create Case Analysis Entities

**New File:** `lib/features/interview/domain/entities/case_analysis.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_analysis.freezed.dart';

/// Market sizing case analysis with 5 MBB dimensions
@freezed
class CaseAnalysis with _$CaseAnalysis {
  const factory CaseAnalysis({
    required StructuredProblemSolving structuredProblemSolving,
    required BusinessJudgment businessJudgment,
    required QuantitativeSkills quantitativeSkills,
    required Communication communication,
    required SanityCheck sanityCheck,
    required double overallWeightedScore,
    required String overallLabel,
    required List<PriorityImprovement> priorityImprovements,
    required List<String> highlights,
  }) = _CaseAnalysis;
}

/// Dimension 1: Structured Problem-Solving (30% weight)
@freezed
class StructuredProblemSolving with _$StructuredProblemSolving {
  const factory StructuredProblemSolving({
    required int score,
    required String feedback,
    required String frameworkDetected,
    required bool meceApplied,
    required bool clarifyingQuestionsAsked,
  }) = _StructuredProblemSolving;
}

/// Dimension 2: Business Judgment & Assumptions (25% weight)
@freezed
class BusinessJudgment with _$BusinessJudgment {
  const factory BusinessJudgment({
    required int score,
    required String feedback,
    required bool assumptionsStated,
    required bool assumptionsJustified,
    required String assumptionQuality,
  }) = _BusinessJudgment;
}

/// Dimension 3: Quantitative Skills (20% weight)
@freezed
class QuantitativeSkills with _$QuantitativeSkills {
  const factory QuantitativeSkills({
    required int score,
    required String feedback,
    required bool mathShownStepByStep,
    required bool mathVerbalized,
    required bool calculationsAccurate,
  }) = _QuantitativeSkills;
}

/// Dimension 4: Communication (15% weight)
@freezed
class Communication with _$Communication {
  const factory Communication({
    required int score,
    required String feedback,
    String? paceAnalysis,
    int? fillersCount,
    int? pausesCount,
  }) = _Communication;
}

/// Dimension 5: Sanity Check (10% weight)
@freezed
class SanityCheck with _$SanityCheck {
  const factory SanityCheck({
    required int score,
    required String feedback,
    required bool sanityCheckPerformed,
    required bool sanityCheckVerbalized,
  }) = _SanityCheck;
}

@freezed
class PriorityImprovement with _$PriorityImprovement {
  const factory PriorityImprovement({
    required String timestamp,
    required String feedback,
  }) = _PriorityImprovement;
}
```

---

#### 1.2 Update Interview Analysis Entity

**File:** `lib/features/interview/domain/entities/interview_analysis.dart`

**Add new fields:**
```dart
@freezed
class InterviewAnalysis with _$InterviewAnalysis {
  const factory InterviewAnalysis({
    required String id,
    required String status,
    required String transcript,
    required double duration,
    String? recordingUrl,
    required Metrics metrics,

    // Generic interview (existing)
    AIAnalysis? aiAnalysis,

    // Market sizing specific fields (NEW)
    String? caseQuestion,
    String? difficulty,
    String? candidateAnswer,
    CaseAnalysis? caseAnalysis,
  }) = _InterviewAnalysis;

  const InterviewAnalysis._();

  /// Check if this is a market sizing interview
  bool get isMarketSizing => caseAnalysis != null;
}
```

---

#### 1.3 Create Case Analysis DTOs

**New File:** `lib/features/interview/data/dtos/case_analysis_dto.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/case_analysis.dart';

part 'case_analysis_dto.freezed.dart';
part 'case_analysis_dto.g.dart';

@freezed
class CaseAnalysisDto with _$CaseAnalysisDto {
  const factory CaseAnalysisDto({
    required StructuredProblemSolvingDto structuredProblemSolving,
    required BusinessJudgmentDto businessJudgment,
    required QuantitativeSkillsDto quantitativeSkills,
    required CommunicationDto communication,
    required SanityCheckDto sanityCheck,
    required double overallWeightedScore,
    required String overallLabel,
    required List<PriorityImprovementDto> priorityImprovements,
    required List<String> highlights,
  }) = _CaseAnalysisDto;

  const CaseAnalysisDto._();

  factory CaseAnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$CaseAnalysisDtoFromJson(json);

  CaseAnalysis toEntity() => CaseAnalysis(
        structuredProblemSolving: structuredProblemSolving.toEntity(),
        businessJudgment: businessJudgment.toEntity(),
        quantitativeSkills: quantitativeSkills.toEntity(),
        communication: communication.toEntity(),
        sanityCheck: sanityCheck.toEntity(),
        overallWeightedScore: overallWeightedScore,
        overallLabel: overallLabel,
        priorityImprovements:
            priorityImprovements.map((e) => e.toEntity()).toList(),
        highlights: highlights,
      );
}

@freezed
class StructuredProblemSolvingDto with _$StructuredProblemSolvingDto {
  const factory StructuredProblemSolvingDto({
    required int score,
    required String feedback,
    required String frameworkDetected,
    required bool meceApplied,
    required bool clarifyingQuestionsAsked,
  }) = _StructuredProblemSolvingDto;

  const StructuredProblemSolvingDto._();

  factory StructuredProblemSolvingDto.fromJson(Map<String, dynamic> json) =>
      _$StructuredProblemSolvingDtoFromJson(json);

  StructuredProblemSolving toEntity() => StructuredProblemSolving(
        score: score,
        feedback: feedback,
        frameworkDetected: frameworkDetected,
        meceApplied: meceApplied,
        clarifyingQuestionsAsked: clarifyingQuestionsAsked,
      );
}

@freezed
class BusinessJudgmentDto with _$BusinessJudgmentDto {
  const factory BusinessJudgmentDto({
    required int score,
    required String feedback,
    required bool assumptionsStated,
    required bool assumptionsJustified,
    required String assumptionQuality,
  }) = _BusinessJudgmentDto;

  const BusinessJudgmentDto._();

  factory BusinessJudgmentDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessJudgmentDtoFromJson(json);

  BusinessJudgment toEntity() => BusinessJudgment(
        score: score,
        feedback: feedback,
        assumptionsStated: assumptionsStated,
        assumptionsJustified: assumptionsJustified,
        assumptionQuality: assumptionQuality,
      );
}

@freezed
class QuantitativeSkillsDto with _$QuantitativeSkillsDto {
  const factory QuantitativeSkillsDto({
    required int score,
    required String feedback,
    required bool mathShownStepByStep,
    required bool mathVerbalized,
    required bool calculationsAccurate,
  }) = _QuantitativeSkillsDto;

  const QuantitativeSkillsDto._();

  factory QuantitativeSkillsDto.fromJson(Map<String, dynamic> json) =>
      _$QuantitativeSkillsDtoFromJson(json);

  QuantitativeSkills toEntity() => QuantitativeSkills(
        score: score,
        feedback: feedback,
        mathShownStepByStep: mathShownStepByStep,
        mathVerbalized: mathVerbalized,
        calculationsAccurate: calculationsAccurate,
      );
}

@freezed
class CommunicationDto with _$CommunicationDto {
  const factory CommunicationDto({
    required int score,
    required String feedback,
    String? paceAnalysis,
    int? fillersCount,
    int? pausesCount,
  }) = _CommunicationDto;

  const CommunicationDto._();

  factory CommunicationDto.fromJson(Map<String, dynamic> json) =>
      _$CommunicationDtoFromJson(json);

  Communication toEntity() => Communication(
        score: score,
        feedback: feedback,
        paceAnalysis: paceAnalysis,
        fillersCount: fillersCount,
        pausesCount: pausesCount,
      );
}

@freezed
class SanityCheckDto with _$SanityCheckDto {
  const factory SanityCheckDto({
    required int score,
    required String feedback,
    required bool sanityCheckPerformed,
    required bool sanityCheckVerbalized,
  }) = _SanityCheckDto;

  const SanityCheckDto._();

  factory SanityCheckDto.fromJson(Map<String, dynamic> json) =>
      _$SanityCheckDtoFromJson(json);

  SanityCheck toEntity() => SanityCheck(
        score: score,
        feedback: feedback,
        sanityCheckPerformed: sanityCheckPerformed,
        sanityCheckVerbalized: sanityCheckVerbalized,
      );
}

@freezed
class PriorityImprovementDto with _$PriorityImprovementDto {
  const factory PriorityImprovementDto({
    required String timestamp,
    required String feedback,
  }) = _PriorityImprovementDto;

  const PriorityImprovementDto._();

  factory PriorityImprovementDto.fromJson(Map<String, dynamic> json) =>
      _$PriorityImprovementDtoFromJson(json);

  PriorityImprovement toEntity() => PriorityImprovement(
        timestamp: timestamp,
        feedback: feedback,
      );
}
```

---

#### 1.4 Update Interview Analysis DTO

**File:** `lib/features/interview/data/dtos/interview_analysis_dto.dart`

**Add new fields:**
```dart
import 'case_analysis_dto.dart'; // NEW import

@freezed
class InterviewAnalysisDto with _$InterviewAnalysisDto {
  const factory InterviewAnalysisDto({
    required String id,
    required String status,
    required String transcript,
    required double duration,
    String? recordingUrl,
    required MetricsDto metrics,
    AIAnalysisDto? aiAnalysis,

    // Market sizing specific fields (NEW)
    String? caseQuestion,
    String? difficulty,
    String? candidateAnswer,
    CaseAnalysisDto? caseAnalysis,
  }) = _InterviewAnalysisDto;

  const InterviewAnalysisDto._();

  factory InterviewAnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$InterviewAnalysisDtoFromJson(json);

  InterviewAnalysis toEntity() => InterviewAnalysis(
        id: id,
        status: status,
        transcript: transcript,
        duration: duration,
        recordingUrl: recordingUrl,
        metrics: metrics.toEntity(),
        aiAnalysis: aiAnalysis?.toEntity(),
        caseQuestion: caseQuestion,
        difficulty: difficulty,
        candidateAnswer: candidateAnswer,
        caseAnalysis: caseAnalysis?.toEntity(),
      );
}
```

---

#### 1.5 Run Code Generation

```bash
cd /Users/mac/AndroidStudioProjects/ai_interview_mvp

# Generate Freezed classes and JSON serialization
flutter pub run build_runner build --delete-conflicting-outputs
```

**Expected output:**
- `case_analysis.freezed.dart`
- `case_analysis_dto.freezed.dart`
- `case_analysis_dto.g.dart`
- Updated `interview_analysis.freezed.dart`
- Updated `interview_analysis_dto.g.dart`

---

#### 1.6 Testing Phase 1

**Create test file:** `test/features/interview/domain/entities/case_analysis_test.dart`

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_interview_mvp/features/interview/domain/entities/case_analysis.dart';

void main() {
  group('CaseAnalysis Entity', () {
    test('should create CaseAnalysis with all fields', () {
      final caseAnalysis = CaseAnalysis(
        structuredProblemSolving: StructuredProblemSolving(
          score: 4,
          feedback: 'Strong framework',
          frameworkDetected: 'top-down',
          meceApplied: true,
          clarifyingQuestionsAsked: true,
        ),
        businessJudgment: BusinessJudgment(
          score: 3,
          feedback: 'Good assumptions',
          assumptionsStated: true,
          assumptionsJustified: true,
          assumptionQuality: 'Examples provided',
        ),
        quantitativeSkills: QuantitativeSkills(
          score: 4,
          feedback: 'Clear calculations',
          mathShownStepByStep: true,
          mathVerbalized: true,
          calculationsAccurate: true,
        ),
        communication: Communication(
          score: 4,
          feedback: 'Excellent pace',
          paceAnalysis: '145 WPM',
          fillersCount: 3,
          pausesCount: 1,
        ),
        sanityCheck: SanityCheck(
          score: 5,
          feedback: 'Outstanding check',
          sanityCheckPerformed: true,
          sanityCheckVerbalized: true,
        ),
        overallWeightedScore: 3.85,
        overallLabel: 'Very Good',
        priorityImprovements: [],
        highlights: ['Clear framework'],
      );

      expect(caseAnalysis.overallWeightedScore, 3.85);
      expect(caseAnalysis.structuredProblemSolving.score, 4);
      expect(caseAnalysis.businessJudgment.score, 3);
    });
  });
}
```

**Test JSON parsing:** `test/features/interview/data/dtos/case_analysis_dto_test.dart`

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_interview_mvp/features/interview/data/dtos/case_analysis_dto.dart';

void main() {
  group('CaseAnalysisDto', () {
    test('should parse JSON correctly', () {
      final json = {
        'structuredProblemSolving': {
          'score': 4,
          'feedback': 'Strong framework',
          'frameworkDetected': 'top-down',
          'meceApplied': true,
          'clarifyingQuestionsAsked': true,
        },
        'businessJudgment': {
          'score': 3,
          'feedback': 'Good assumptions',
          'assumptionsStated': true,
          'assumptionsJustified': true,
          'assumptionQuality': 'Examples',
        },
        'quantitativeSkills': {
          'score': 4,
          'feedback': 'Clear calculations',
          'mathShownStepByStep': true,
          'mathVerbalized': true,
          'calculationsAccurate': true,
        },
        'communication': {
          'score': 4,
          'feedback': 'Excellent pace',
          'paceAnalysis': '145 WPM',
          'fillersCount': 3,
          'pausesCount': 1,
        },
        'sanityCheck': {
          'score': 5,
          'feedback': 'Outstanding',
          'sanityCheckPerformed': true,
          'sanityCheckVerbalized': true,
        },
        'overallWeightedScore': 3.85,
        'overallLabel': 'Very Good',
        'priorityImprovements': [
          {
            'timestamp': '02:45',
            'feedback': 'Strengthen assumptions',
          }
        ],
        'highlights': ['Clear framework'],
      };

      final dto = CaseAnalysisDto.fromJson(json);
      final entity = dto.toEntity();

      expect(entity.overallWeightedScore, 3.85);
      expect(entity.overallLabel, 'Very Good');
      expect(entity.structuredProblemSolving.score, 4);
      expect(entity.priorityImprovements.length, 1);
    });
  });
}
```

**Run tests:**
```bash
flutter test test/features/interview/domain/entities/case_analysis_test.dart
flutter test test/features/interview/data/dtos/case_analysis_dto_test.dart
```

---

### Phase 2: Results Screen Redesign (Core Value)
**Goal:** Display 5 MBB dimensions in beautiful, user-friendly UI

**Priority:** 🔴 HIGH (delivers main value)
**Estimated Effort:** 6-8 hours

---

#### 2.1 Create Dimension Card Widget

**New File:** `lib/features/interview/presentation/widgets/dimension_card_widget.dart`

```dart
import 'package:flutter/material.dart';
import 'package:ai_interview_mvp/core/extensions/context_extensions.dart';

class DimensionCardWidget extends StatelessWidget {
  final String title;
  final int weight;
  final int score;
  final String feedback;
  final List<Widget> details;

  const DimensionCardWidget({
    Key? key,
    required this.title,
    required this.weight,
    required this.score,
    required this.feedback,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          leading: _buildScoreBadge(),
          title: Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            'Weight: $weight%',
            style: context.textTheme.bodySmall?.copyWith(
              color: Colors.grey.shade600,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Feedback
                  Text(
                    feedback,
                    style: context.textTheme.bodyMedium?.copyWith(
                      height: 1.5,
                    ),
                  ),
                  if (details.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    ...details,
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreBadge() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: _getScoreColor(score.toDouble()),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$score',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color _getScoreColor(double score) {
    if (score >= 4.5) return Colors.green.shade700;
    if (score >= 3.5) return Colors.green.shade500;
    if (score >= 2.5) return Colors.orange.shade600;
    if (score >= 1.5) return Colors.orange.shade800;
    return Colors.red.shade700;
  }
}
```

---

#### 2.2 Create Detail Row Widget

**New File:** `lib/features/interview/presentation/widgets/detail_row_widget.dart`

```dart
import 'package:flutter/material.dart';
import 'package:ai_interview_mvp/core/extensions/context_extensions.dart';

class DetailRowWidget extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const DetailRowWidget({
    Key? key,
    required this.label,
    required this.value,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              color: Colors.grey.shade700,
            ),
          ),
          Text(
            value,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
```

---

#### 2.3 Create Market Sizing Score Card Widget

**New File:** `lib/features/interview/presentation/widgets/market_sizing_score_card.dart`

```dart
import 'package:flutter/material.dart';
import 'package:ai_interview_mvp/core/extensions/context_extensions.dart';
import '../../domain/entities/case_analysis.dart';

class MarketSizingScoreCard extends StatelessWidget {
  final CaseAnalysis caseAnalysis;
  final String? caseQuestion;
  final String? difficulty;

  const MarketSizingScoreCard({
    Key? key,
    required this.caseAnalysis,
    this.caseQuestion,
    this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade600, Colors.blue.shade400],
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
          const Icon(
            Icons.business_center_rounded,
            color: Colors.white,
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            '${caseAnalysis.overallWeightedScore.toStringAsFixed(2)}/5.0',
            style: context.textTheme.displayLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            caseAnalysis.overallLabel,
            style: context.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'MBB Evaluation Score',
              style: context.textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (caseQuestion != null) ...[
            const SizedBox(height: 20),
            Text(
              caseQuestion!,
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.white.withValues(alpha: 0.9),
              ),
              textAlign: TextAlign.center,
            ),
          ],
          if (difficulty != null) ...[
            const SizedBox(height: 12),
            Chip(
              label: Text(
                difficulty!.toUpperCase(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: _getDifficultyColor(difficulty!),
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ],
        ],
      ),
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return Colors.green.shade100;
      case 'medium':
        return Colors.orange.shade100;
      case 'hard':
        return Colors.red.shade100;
      default:
        return Colors.grey.shade200;
    }
  }
}
```

---

#### 2.4 Update Analysis Results Page

**File:** `lib/features/interview/presentation/pages/analysis_results_page.dart`

**Replace the build method:**

```dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ai_interview_mvp/core/extensions/context_extensions.dart';
import '../../domain/entities/interview_analysis.dart';
import '../widgets/dimension_card_widget.dart';
import '../widgets/detail_row_widget.dart';
import '../widgets/market_sizing_score_card.dart';
// Keep existing imports for generic interview widgets

class AnalysisResultsPage extends HookConsumerWidget {
  final String interviewId;

  const AnalysisResultsPage({
    Key? key,
    required this.interviewId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analysisState = ref.watch(interviewDetailNotifierProvider(interviewId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Interview Results'),
        elevation: 0,
      ),
      body: analysisState.when(
        data: (analysis) => _buildAnalysisContent(context, analysis),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }

  Widget _buildAnalysisContent(BuildContext context, InterviewAnalysis analysis) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Score Card
          if (analysis.isMarketSizing)
            _buildMarketSizingScoreCard(analysis)
          else
            _buildGenericScoreCard(analysis),

          const SizedBox(height: 32),

          // Main Content
          if (analysis.isMarketSizing)
            _buildMarketSizingContent(context, analysis)
          else
            _buildGenericContent(context, analysis),
        ],
      ),
    );
  }

  Widget _buildMarketSizingScoreCard(InterviewAnalysis analysis) {
    return MarketSizingScoreCard(
      caseAnalysis: analysis.caseAnalysis!,
      caseQuestion: analysis.caseQuestion,
      difficulty: analysis.difficulty,
    );
  }

  Widget _buildGenericScoreCard(InterviewAnalysis analysis) {
    // Use existing AnalysisScoreCardWidget
    return AnalysisScoreCardWidget(
      overallScore: analysis.aiAnalysis?.overallScore ?? 0,
      confidenceScore: analysis.aiAnalysis?.confidenceScore ?? 0,
    );
  }

  Widget _buildMarketSizingContent(BuildContext context, InterviewAnalysis analysis) {
    final caseAnalysis = analysis.caseAnalysis!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Highlights Section
        if (caseAnalysis.highlights.isNotEmpty) ...[
          _buildSectionTitle(context, 'Highlights'),
          const SizedBox(height: 12),
          _buildHighlightsCard(context, caseAnalysis.highlights),
          const SizedBox(height: 24),
        ],

        // 5 MBB Dimensions
        _buildSectionTitle(context, 'MBB Evaluation Criteria'),
        const SizedBox(height: 12),

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
              value: caseAnalysis.structuredProblemSolving.meceApplied ? 'Yes' : 'No',
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
        const SizedBox(height: 12),

        DimensionCardWidget(
          title: 'Business Judgment & Assumptions',
          weight: 25,
          score: caseAnalysis.businessJudgment.score,
          feedback: caseAnalysis.businessJudgment.feedback,
          details: [
            DetailRowWidget(
              label: 'Assumptions Stated',
              value: caseAnalysis.businessJudgment.assumptionsStated ? 'Yes' : 'No',
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
                  style: context.textTheme.bodySmall?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),

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
              value: caseAnalysis.quantitativeSkills.mathVerbalized ? 'Yes' : 'No',
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
        const SizedBox(height: 12),

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
        const SizedBox(height: 12),

        DimensionCardWidget(
          title: 'Sanity Check',
          weight: 10,
          score: caseAnalysis.sanityCheck.score,
          feedback: caseAnalysis.sanityCheck.feedback,
          details: [
            DetailRowWidget(
              label: 'Performed',
              value: caseAnalysis.sanityCheck.sanityCheckPerformed ? 'Yes' : 'No',
              valueColor: caseAnalysis.sanityCheck.sanityCheckPerformed
                  ? Colors.green
                  : Colors.orange,
            ),
            DetailRowWidget(
              label: 'Verbalized',
              value: caseAnalysis.sanityCheck.sanityCheckVerbalized ? 'Yes' : 'No',
              valueColor: caseAnalysis.sanityCheck.sanityCheckVerbalized
                  ? Colors.green
                  : Colors.orange,
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Priority Improvements
        if (caseAnalysis.priorityImprovements.isNotEmpty) ...[
          _buildSectionTitle(context, 'Priority Improvements'),
          const SizedBox(height: 12),
          ...caseAnalysis.priorityImprovements.map((improvement) {
            return _buildImprovementCard(context, improvement);
          }),
          const SizedBox(height: 24),
        ],

        // Transcript
        _buildSectionTitle(context, 'Full Transcript'),
        const SizedBox(height: 12),
        _buildTranscriptCard(context, analysis.transcript),
      ],
    );
  }

  Widget _buildGenericContent(BuildContext context, InterviewAnalysis analysis) {
    // Use existing widgets for generic interview
    return Column(
      children: [
        AnalysisMetricsGridWidget(metrics: analysis.metrics),
        const SizedBox(height: 24),
        if (analysis.aiAnalysis != null) ...[
          AnalysisInsightCardWidget(aiAnalysis: analysis.aiAnalysis!),
          const SizedBox(height: 24),
        ],
        AnalysisTranscriptCardWidget(transcript: analysis.transcript),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: context.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
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
                    style: context.textTheme.bodyMedium,
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
          style: context.textTheme.bodyMedium,
        ),
        subtitle: Text(
          'Timestamp: ${improvement.timestamp}',
          style: context.textTheme.bodySmall?.copyWith(
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }

  Widget _buildTranscriptCard(BuildContext context, String transcript) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          leading: const Icon(Icons.transcript_rounded),
          title: Text(
            'View Transcript',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                transcript,
                style: context.textTheme.bodyMedium?.copyWith(height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### Phase 3: Interview Room Enhancements
**Goal:** Display case question banner and countdown timer

**Priority:** 🟡 MEDIUM (nice-to-have for MVP)
**Estimated Effort:** 3-4 hours

---

#### 3.1 Create Case Question Banner Widget

**New File:** `lib/features/interview/presentation/widgets/case_question_banner.dart`

```dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:ai_interview_mvp/core/extensions/context_extensions.dart';

class CaseQuestionBanner extends StatelessWidget {
  final Room? room;

  const CaseQuestionBanner({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (room == null || room!.metadata == null || room!.metadata!.isEmpty) {
      return const SizedBox.shrink();
    }

    try {
      final metadataJson = jsonDecode(room!.metadata!);
      final caseQuestion = metadataJson['caseQuestion'] as String?;
      final difficulty = metadataJson['difficulty'] as String?;

      if (caseQuestion == null) return const SizedBox.shrink();

      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          border: Border(
            bottom: BorderSide(
              color: Colors.blue.shade200,
              width: 1,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.business_center_rounded,
                  color: Colors.blue.shade800,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Market Sizing Case',
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  ),
                ),
                const Spacer(),
                if (difficulty != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: _getDifficultyColor(difficulty),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      difficulty.toUpperCase(),
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              caseQuestion,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    } catch (e) {
      return const SizedBox.shrink();
    }
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return Colors.green.shade100;
      case 'medium':
        return Colors.orange.shade100;
      case 'hard':
        return Colors.red.shade100;
      default:
        return Colors.grey.shade200;
    }
  }
}
```

---

#### 3.2 Create Countdown Timer Widget

**New File:** `lib/features/interview/presentation/widgets/countdown_timer_widget.dart`

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ai_interview_mvp/core/extensions/context_extensions.dart';

class CountdownTimerWidget extends HookWidget {
  final int durationSeconds;
  final VoidCallback? onComplete;

  const CountdownTimerWidget({
    Key? key,
    this.durationSeconds = 600, // 10 minutes default
    this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final elapsed = useState(0);
    final isRunning = useState(true);

    useEffect(() {
      if (!isRunning.value) return null;

      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        elapsed.value++;

        if (elapsed.value >= durationSeconds) {
          timer.cancel();
          isRunning.value = false;
          onComplete?.call();
        }
      });

      return timer.cancel;
    }, [isRunning.value]);

    final remaining = durationSeconds - elapsed.value;
    final minutes = remaining ~/ 60;
    final seconds = remaining % 60;
    final isWarning = remaining < 120; // Last 2 minutes

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isWarning ? Colors.red.shade50 : Colors.grey.shade100,
        border: Border(
          bottom: BorderSide(
            color: isWarning ? Colors.red.shade200 : Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.timer_rounded,
            color: isWarning ? Colors.red.shade700 : Colors.grey.shade700,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: isWarning ? Colors.red.shade700 : Colors.grey.shade800,
              fontFeatureSettings: const [
                FontFeature.tabularFigures(),
              ],
            ),
          ),
          if (isWarning) ...[
            const SizedBox(width: 8),
            Icon(
              Icons.warning_rounded,
              color: Colors.red.shade700,
              size: 20,
            ),
          ],
        ],
      ),
    );
  }
}
```

---

#### 3.3 Update Interview Page

**File:** `lib/features/interview/presentation/pages/interview_page.dart`

**Add imports:**
```dart
import '../widgets/case_question_banner.dart';
import '../widgets/countdown_timer_widget.dart';
```

**Update build method to add banner and timer:**

```dart
@override
Widget build(BuildContext context, WidgetRef ref) {
  final interviewState = ref.watch(interviewNotifierProvider);

  return Scaffold(
    appBar: AppBar(
      title: const Text('Interview Room'),
      actions: [
        // Existing network strength indicator
        NetworkStrengthIndicator(),
      ],
    ),
    body: Column(
      children: [
        // Case Question Banner (NEW)
        interviewState.maybeWhen(
          connected: (localVideoTrack, participantIdentity) {
            return CaseQuestionBanner(
              room: ref.read(interviewNotifierProvider.notifier).room,
            );
          },
          orElse: () => const SizedBox.shrink(),
        ),

        // Countdown Timer (NEW)
        interviewState.maybeWhen(
          connected: (_, __) => CountdownTimerWidget(
            durationSeconds: 600, // 10 minutes
            onComplete: () {
              // Optional: Show dialog when time's up
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Time is up! Please complete your interview.'),
                  backgroundColor: Colors.orange,
                ),
              );
            },
          ),
          orElse: () => const SizedBox.shrink(),
        ),

        // Existing interview content
        Expanded(
          child: Row(
            children: [
              // Existing video preview
              Expanded(
                flex: 3,
                child: VideoPreviewWidget(),
              ),
              // Existing transcription panel
              Expanded(
                flex: 2,
                child: TranscriptionPanel(),
              ),
            ],
          ),
        ),

        // Existing controls
        InterviewControlsWidget(),
      ],
    ),
  );
}
```

---

### Phase 4: Testing & Validation
**Goal:** Ensure everything works end-to-end

**Priority:** 🔴 HIGH (critical for quality)
**Estimated Effort:** 2-3 hours

---

#### 4.1 Unit Tests

Run existing unit tests:
```bash
flutter test test/features/interview/domain/entities/case_analysis_test.dart
flutter test test/features/interview/data/dtos/case_analysis_dto_test.dart
```

#### 4.2 Widget Tests

**Test results screen rendering:**
```bash
flutter test test/features/interview/presentation/pages/analysis_results_page_test.dart
```

#### 4.3 Integration Testing

**End-to-End Flow:**

1. **Start Interview:**
   ```bash
   flutter run
   ```
   - Tap "Start Interview" from home
   - Join LiveKit room
   - Verify case question banner appears
   - Verify countdown timer starts at 10:00

2. **During Interview:**
   - Voice agent asks market sizing question
   - Respond with structured answer
   - Watch timer count down
   - Check transcription displays correctly
   - Complete interview

3. **View Results:**
   - Wait for analysis to complete (polling with loading states)
   - Verify 5 MBB dimensions display
   - Expand each dimension card
   - Check highlights and improvements sections
   - Verify transcript displays

4. **Backwards Compatibility Test:**
   - Start a generic interview (if you have old data)
   - Verify results still display correctly with old UI
   - No crashes or missing data

---

## Implementation Checklist

### Week 1: Data Foundation (Phase 1)
- [ ] Create `case_analysis.dart` entity
- [ ] Update `interview_analysis.dart` entity
- [ ] Create `case_analysis_dto.dart`
- [ ] Update `interview_analysis_dto.dart`
- [ ] Run code generation (`build_runner`)
- [ ] Write unit tests for entities
- [ ] Write unit tests for DTOs
- [ ] Test JSON parsing with sample data

### Week 2: UI Redesign (Phase 2)
- [ ] Create `dimension_card_widget.dart`
- [ ] Create `detail_row_widget.dart`
- [ ] Create `market_sizing_score_card.dart`
- [ ] Update `analysis_results_page.dart` with market sizing UI
- [ ] Keep generic interview UI intact
- [ ] Test with real market sizing interview
- [ ] Test backwards compatibility with generic interview
- [ ] Fix any layout/styling issues

### Week 3: Interview Experience (Phase 3)
- [ ] Create `case_question_banner.dart`
- [ ] Create `countdown_timer_widget.dart`
- [ ] Update `interview_page.dart` to include banner and timer
- [ ] Test banner displays metadata correctly
- [ ] Test timer counts down from 10:00
- [ ] Test timer turns red at 2:00 remaining
- [ ] Test on different screen sizes

### Week 4: Testing & Polish (Phase 4)
- [ ] Run all unit tests
- [ ] Run widget tests
- [ ] Perform end-to-end integration test
- [ ] Test with 3-5 practice interviews
- [ ] Fix any bugs discovered
- [ ] Deploy to staging/TestFlight
- [ ] Recruit 10-20 MBA students for beta testing

---

## File Structure Summary

### New Files to Create:
```
lib/features/interview/
├── domain/entities/
│   └── case_analysis.dart (NEW)
├── data/dtos/
│   └── case_analysis_dto.dart (NEW)
└── presentation/widgets/
    ├── dimension_card_widget.dart (NEW)
    ├── detail_row_widget.dart (NEW)
    ├── market_sizing_score_card.dart (NEW)
    ├── case_question_banner.dart (NEW)
    └── countdown_timer_widget.dart (NEW)
```

### Files to Modify:
```
lib/features/interview/
├── domain/entities/
│   └── interview_analysis.dart (MODIFY - add case fields)
├── data/dtos/
│   └── interview_analysis_dto.dart (MODIFY - add case fields)
└── presentation/pages/
    ├── analysis_results_page.dart (MODIFY - add market sizing UI)
    └── interview_page.dart (MODIFY - add banner and timer)
```

---

## Design Specifications

### Color Palette (Consistent with Existing App)

**Primary Colors:**
- Blue: `Colors.blue.shade600` (primary actions)
- Purple: `Colors.purple.shade500` (accents)

**Score Colors:**
- Excellent (4.5-5.0): `Colors.green.shade700`
- Very Good (3.5-4.4): `Colors.green.shade500`
- Good (2.5-3.4): `Colors.orange.shade600`
- Adequate (1.5-2.4): `Colors.orange.shade800`
- Insufficient (1.0-1.4): `Colors.red.shade700`

**Difficulty Colors:**
- Easy: `Colors.green.shade100`
- Medium: `Colors.orange.shade100`
- Hard: `Colors.red.shade100`

**Background Tints:**
- Highlights: `Colors.green.shade50` with `Colors.green.shade200` border
- Improvements: `Colors.orange.shade50` with `Colors.orange.shade200` border
- Case Banner: `Colors.blue.shade50` with `Colors.blue.shade200` border
- Timer Warning: `Colors.red.shade50` with `Colors.red.shade200` border

### Typography (Existing SF Pro Display)

**Score Display:**
- Size: 48sp
- Weight: Bold
- Color: White (on gradient background)

**Dimension Titles:**
- Size: 16sp
- Weight: Semi-bold (w600)
- Color: `Colors.grey.shade800`

**Body Text:**
- Size: 14sp
- Weight: Regular
- Line height: 1.5

**Captions:**
- Size: 12sp
- Weight: Regular
- Color: `Colors.grey.shade600`

### Spacing (Consistent with Existing)

- Section padding: 24dp
- Card padding: 20dp
- Element spacing: 16dp (vertical), 8dp (horizontal)
- Border radius: 16dp (cards), 24dp (hero cards)

---

## Success Metrics

### Technical Metrics
- ✅ All unit tests pass
- ✅ All widget tests pass
- ✅ Integration tests pass with real backend
- ✅ No crashes during normal flow
- ✅ Backwards compatible with generic interviews

### User Experience Metrics
- ✅ Users can clearly see MBB evaluation scores
- ✅ Users understand what each dimension means
- ✅ Users can expand dimensions for detailed feedback
- ✅ Users find priority improvements helpful
- ✅ Case question is visible throughout interview
- ✅ Timer provides clear time awareness

### Business Metrics
- 10+ users complete 2+ market sizing cases each
- NPS > 40 (would recommend to peers)
- Users report evaluation feels accurate and fair
- 80%+ interview completion rate
- Users report improvement after multiple sessions

---

## Troubleshooting Common Issues

### Issue 1: Code Generation Fails
**Symptoms:** Build runner errors, missing `.g.dart` files

**Solution:**
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### Issue 2: JSON Parsing Errors
**Symptoms:** `FormatException` when fetching interview

**Solution:**
- Check backend response format matches DTOs
- Add null safety (`String?` instead of `String`)
- Use `@JsonKey(name: 'fieldName')` for mismatched fields

### Issue 3: UI Not Updating
**Symptoms:** Results screen shows old data

**Solution:**
- Verify Riverpod provider watching correctly
- Check `ref.watch(interviewDetailNotifierProvider(id))`
- Use `ref.invalidate()` to force refresh if needed

### Issue 4: Timer Doesn't Start
**Symptoms:** Timer stuck at 10:00

**Solution:**
- Check `useEffect` hook dependencies
- Verify `isRunning.value` is true
- Add debug prints in Timer.periodic callback

### Issue 5: Case Banner Doesn't Appear
**Symptoms:** Banner shows nothing during interview

**Solution:**
- Check LiveKit room metadata is set by voice agent
- Verify JSON parsing in `CaseQuestionBanner`
- Add try-catch logging to see metadata content

---

## Additional Features (Post-MVP)

### Optional Enhancements for Future Releases:

1. **Timestamp Navigation:**
   - Tap improvement timestamp → Jump to transcript location
   - Highlight relevant text in transcript

2. **Progress Tracking:**
   - Compare current interview with previous attempts
   - Show improvement trends over time
   - Radar chart visualization of 5 dimensions

3. **Export Results:**
   - Export results as PDF
   - Share results with peers/mentors
   - Email results to self

4. **Practice Recommendations:**
   - AI-powered next steps based on weak dimensions
   - Recommended practice areas
   - Custom practice sessions targeting specific skills

5. **Difficulty Selection:**
   - Pre-interview screen to select difficulty
   - Backend filters questions by difficulty
   - Personalized difficulty recommendations

---

## Questions Before Starting

1. **Timeline:** Do you want to implement all 3 phases in one go, or incrementally?

2. **Testing:** Can you recruit 5-10 MBA students for beta testing after implementation?

3. **Design Review:** Would you like to review the UI mockups before implementation?

4. **Features:** Are all Phase 3 features (banner + timer) required for MVP, or can we defer some?

---

## Ready to Start

This plan is now saved in your Flutter project at:
```
/Users/mac/AndroidStudioProjects/ai_interview_mvp/MOBILE_INTEGRATION_PLAN.md
```

Start with **Phase 1** (data models), test thoroughly, then move to **Phase 2** (UI redesign). The plan follows your existing architecture and styling patterns for consistency.

Good luck with the implementation! 🚀
