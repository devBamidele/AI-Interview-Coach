// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordModel _$WordModelFromJson(Map<String, dynamic> json) => _WordModel(
  word: json['word'] as String,
  start: (json['start'] as num).toDouble(),
  end: (json['end'] as num).toDouble(),
  confidence: (json['confidence'] as num).toDouble(),
);

Map<String, dynamic> _$WordModelToJson(_WordModel instance) =>
    <String, dynamic>{
      'word': instance.word,
      'start': instance.start,
      'end': instance.end,
      'confidence': instance.confidence,
    };
