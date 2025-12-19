import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// Domain entity representing an authenticated user
@freezed
sealed class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String name,
    DateTime? createdAt,
  }) = _User;
}
