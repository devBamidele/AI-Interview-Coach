import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_metadata.dart';

part 'user_metadata_dto.freezed.dart';
part 'user_metadata_dto.g.dart';

@freezed
sealed class UserMetadataDto with _$UserMetadataDto {
  const UserMetadataDto._();

  const factory UserMetadataDto({
    required bool hasGrantedInterviewConsent,
  }) = _UserMetadataDto;

  factory UserMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$UserMetadataDtoFromJson(json);

  UserMetadata toEntity() => UserMetadata(
        hasGrantedInterviewConsent: hasGrantedInterviewConsent,
      );
}
