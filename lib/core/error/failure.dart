import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// Base failure class for type-safe error handling
@freezed
sealed class Failure with _$Failure {
  const factory Failure.network({required String message}) = NetworkFailure;
  const factory Failure.token({required String message}) = TokenFailure;
  const factory Failure.connection({required String message}) =
      ConnectionFailure;
  const factory Failure.mediaDevice({required String message}) =
      MediaDeviceFailure;
}
