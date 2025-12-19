import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// Data transfer object for User from API
@freezed
sealed class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String id,
    required String email,
    required String name,
    String? createdAt,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// Convert DTO to domain entity
  User toEntity() => User(
    id: id,
    email: email,
    name: name,
    createdAt: createdAt != null ? DateTime.parse(createdAt!) : null,
  );
}
