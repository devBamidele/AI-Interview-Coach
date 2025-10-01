import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/filler_word.dart';

part 'filler_word_model.freezed.dart';
part 'filler_word_model.g.dart';

@freezed
sealed class FillerWordModel with _$FillerWordModel {
  const FillerWordModel._();

  const factory FillerWordModel({
    required String word,
    required double timestamp,
  }) = _FillerWordModel;

  factory FillerWordModel.fromJson(Map<String, dynamic> json) =>
      _$FillerWordModelFromJson(json);

  FillerWord toEntity() => FillerWord(
        word: word,
        timestamp: timestamp,
      );
}
