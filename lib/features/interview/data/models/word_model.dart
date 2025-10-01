import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/word.dart';

part 'word_model.freezed.dart';
part 'word_model.g.dart';

@freezed
sealed class WordModel with _$WordModel {
  const WordModel._();

  const factory WordModel({
    required String word,
    required double start,
    required double end,
    required double confidence,
  }) = _WordModel;

  factory WordModel.fromJson(Map<String, dynamic> json) =>
      _$WordModelFromJson(json);

  Word toEntity() => Word(
        word: word,
        start: start,
        end: end,
        confidence: confidence,
      );
}
