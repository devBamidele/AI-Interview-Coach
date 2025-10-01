import 'package:freezed_annotation/freezed_annotation.dart';

part 'filler_word.freezed.dart';

/// Represents a filler word (um, uh, like, etc.) detected in speech
@freezed
sealed class FillerWord with _$FillerWord {
  const factory FillerWord({
    required String word,
    required double timestamp,
  }) = _FillerWord;
}