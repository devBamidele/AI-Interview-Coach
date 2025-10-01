import 'package:freezed_annotation/freezed_annotation.dart';

part 'pause.freezed.dart';

/// Represents a pause detected in speech
@freezed
sealed class Pause with _$Pause {
  const factory Pause({
    required double duration,
    required double at,
  }) = _Pause;
}
