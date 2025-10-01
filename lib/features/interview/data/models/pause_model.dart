import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pause.dart';

part 'pause_model.freezed.dart';
part 'pause_model.g.dart';

@freezed
sealed class PauseModel with _$PauseModel {
  const PauseModel._();

  const factory PauseModel({
    required double duration,
    required double at,
  }) = _PauseModel;

  factory PauseModel.fromJson(Map<String, dynamic> json) =>
      _$PauseModelFromJson(json);

  Pause toEntity() => Pause(
        duration: duration,
        at: at,
      );
}
