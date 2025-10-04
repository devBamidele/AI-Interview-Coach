import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/transcript_event.dart';
import 'word_model.dart';

part 'transcript_event_model.freezed.dart';
part 'transcript_event_model.g.dart';

@freezed
sealed class TranscriptEventModel with _$TranscriptEventModel {
  const TranscriptEventModel._();

  const factory TranscriptEventModel({
    required String text,
    required bool isFinal,
    required List<WordModel> words,
  }) = _TranscriptEventModel;

  factory TranscriptEventModel.fromJson(Map<String, dynamic> json) =>
      _$TranscriptEventModelFromJson(json);

  TranscriptEvent toEntity() => TranscriptEvent(
    text: text,
    isFinal: isFinal,
    words: words.map((w) => w.toEntity()).toList(),
  );
}
