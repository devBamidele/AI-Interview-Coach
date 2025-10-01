import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/analysis_event.dart';
import 'filler_word_model.dart';
import 'pause_model.dart';

part 'analysis_event_model.freezed.dart';
part 'analysis_event_model.g.dart';

@freezed
sealed class AnalysisEventModel with _$AnalysisEventModel {
  const AnalysisEventModel._();

  const factory AnalysisEventModel({
    required String pace,
    required List<FillerWordModel> fillers,
    required List<PauseModel> pauses,
    required int totalWords,
    required double duration,
  }) = _AnalysisEventModel;

  factory AnalysisEventModel.fromJson(Map<String, dynamic> json) =>
      _$AnalysisEventModelFromJson(json);

  AnalysisEvent toEntity() => AnalysisEvent(
        pace: pace,
        fillers: fillers.map((f) => f.toEntity()).toList(),
        pauses: pauses.map((p) => p.toEntity()).toList(),
        totalWords: totalWords,
        duration: duration,
      );
}
