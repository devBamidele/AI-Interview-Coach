import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_metadata.dart';

part 'user.freezed.dart';

/// Domain entity representing a user (authenticated or anonymous)
@freezed
sealed class User with _$User {
  const factory User({
    required String id,
    String? email, // Optional - null for anonymous users
    required String name,
    String? participantIdentity, // For anonymous users
    String? userType, // "authenticated" or "anonymous"
    DateTime? createdAt,
    UserMetadata? metadata, // User metadata including consent status
  }) = _User;
}
