// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisEventModel _$AnalysisEventModelFromJson(Map<String, dynamic> json) =>
    _AnalysisEventModel(
      pace: json['pace'] as String,
      fillers: (json['fillers'] as List<dynamic>)
          .map((e) => FillerWordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pauses: (json['pauses'] as List<dynamic>)
          .map((e) => PauseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWords: (json['totalWords'] as num).toInt(),
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$AnalysisEventModelToJson(_AnalysisEventModel instance) =>
    <String, dynamic>{
      'pace': instance.pace,
      'fillers': instance.fillers,
      'pauses': instance.pauses,
      'totalWords': instance.totalWords,
      'duration': instance.duration,
    };
