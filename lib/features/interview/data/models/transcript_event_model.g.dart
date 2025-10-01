// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcript_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranscriptEventModel _$TranscriptEventModelFromJson(
  Map<String, dynamic> json,
) => _TranscriptEventModel(
  text: json['text'] as String,
  isFinal: json['isFinal'] as bool,
  words: (json['words'] as List<dynamic>)
      .map((e) => WordModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TranscriptEventModelToJson(
  _TranscriptEventModel instance,
) => <String, dynamic>{
  'text': instance.text,
  'isFinal': instance.isFinal,
  'words': instance.words,
};
