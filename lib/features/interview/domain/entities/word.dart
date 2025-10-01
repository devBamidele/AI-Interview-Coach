import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

/// Represents a single word in a transcript with timing and confidence information
@freezed
sealed class Word with _$Word {
  const factory Word({
    required String word,
    required double start,
    required double end,
    required double confidence,
  }) = _Word;
}