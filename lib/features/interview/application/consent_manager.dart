import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../auth/application/auth_manager.dart';
import '../../auth/data/repositories/auth_repository_impl.dart';
import '../../auth/domain/entities/user_metadata.dart';

part 'consent_manager.g.dart';

@riverpod
class ConsentManager extends _$ConsentManager {
  @override
  bool build() {
    // Get current user's consent status from auth state
    final authManager = ref.watch(authManagerProvider);
    final user = authManager.user;

    if (user == null) return false;

    final metadata = user.metadata;
    if (metadata == null) return false;

    return metadata.hasGrantedInterviewConsent;
  }

  /// Check if user has granted consent
  bool hasConsent() {
    return state;
  }

  /// Grant consent (non-blocking, fire-and-forget)
  Future<void> grantConsent() async {
    // Optimistically update local state immediately
    state = true;

    // Update backend in background (non-blocking)
    _updateBackendConsent(true);
  }

  /// Revoke consent (if needed in future)
  Future<void> revokeConsent() async {
    state = false;
    _updateBackendConsent(false);
  }

  /// Update backend without blocking UI
  Future<void> _updateBackendConsent(bool granted) async {
    try {
      final repository = ref.read(authRepositoryProvider);

      // Create metadata object with consent status
      final metadata = UserMetadata(hasGrantedInterviewConsent: granted);

      final result = await repository.updateUserMetadata(metadata);

      result.fold(
        (failure) {
          // Log error but don't block UI
          if (kDebugMode) {
            log('Failed to update consent on backend: ${failure.message}');
          }
        },
        (updatedUser) {
          // Update auth manager with new user data
          final authManager = ref.read(authManagerProvider.notifier);
          final currentSession = ref.read(authManagerProvider).session;

          if (currentSession != null) {
            final updatedSession = currentSession.copyWith(user: updatedUser);
            authManager.saveAuthSession(updatedSession);
          }
        },
      );
    } catch (e) {
      if (kDebugMode) {
        log('Exception updating consent: $e');
      }
      // Don't rethrow - this is fire-and-forget
    }
  }
}
