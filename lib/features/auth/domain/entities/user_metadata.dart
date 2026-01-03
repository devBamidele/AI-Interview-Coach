import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_metadata.freezed.dart';

@freezed
sealed class UserMetadata with _$UserMetadata {
  const factory UserMetadata({
    required bool hasGrantedInterviewConsent,
  }) = _UserMetadata;

  factory UserMetadata.initial() => const UserMetadata(
        hasGrantedInterviewConsent: false,
      );
}
