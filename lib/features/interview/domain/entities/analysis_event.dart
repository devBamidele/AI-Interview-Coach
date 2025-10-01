import 'package:freezed_annotation/freezed_annotation.dart';
import 'filler_word.dart';
import 'pause.dart';

part 'analysis_event.freezed.dart';

/// Represents speech analysis data including pace, fillers, and pauses
@freezed
sealed class AnalysisEvent with _$AnalysisEvent {
  const factory AnalysisEvent({
    required String pace,
    required List<FillerWord> fillers,
    required List<Pause> pauses,
    required int totalWords,
    required double duration,
  }) = _AnalysisEvent;
}
