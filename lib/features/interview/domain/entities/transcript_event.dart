import 'package:freezed_annotation/freezed_annotation.dart';
import 'word.dart';

part 'transcript_event.freezed.dart';

/// Represents a transcription event with text and word-level details
@freezed
sealed class TranscriptEvent with _$TranscriptEvent {
  const factory TranscriptEvent({
    required String text,
    required bool isFinal,
    required List<Word> words,
  }) = _TranscriptEvent;
}
