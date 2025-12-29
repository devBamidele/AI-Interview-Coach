import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../config/router/app_router.dart';
import '../../../auth/application/auth_manager.dart';
import '../../../auth/data/repositories/auth_repository_impl.dart'
    show authRepositoryProvider;
import '../../application/interviews_cache_provider.dart';
import '../../application/user_interviews_notifier.dart';

class HomeHeaderWidget extends ConsumerWidget {
  const HomeHeaderWidget({super.key});

  Future<void> _handleLogout(BuildContext context, WidgetRef ref) async {
    // Show confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 8,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon

              // Title
              const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SF Pro Rounded',
                  color: Color(0xff121212),
                  letterSpacing: -0.3,
                ),
              ),

              const SizedBox(height: 8),

              // Content
              const Text(
                'Are you sure you want to logout?\nYour session will end.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'SF Pro Rounded',
                  color: Color(0xFF8a8a8e),
                  height: 1.4,
                  letterSpacing: 0.1,
                ),
              ),

              const SizedBox(height: 24),

              // Buttons
              Row(
                children: [
                  // Cancel Button
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(
                          color: Color(0xFFD9D9D9),
                          width: 1.5,
                        ),
                        foregroundColor: const Color(0xff121212),
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Logout Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: const Color(0xFFDC2626),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    if (confirmed == true && context.mounted) {
      // Clear interview caches
      ref.read(interviewsCacheProvider.notifier).clear();
      ref.read(userInterviewsProvider.notifier).clear();

      // Get auth manager and refresh token
      final authManager = ref.read(authManagerProvider.notifier);
      final refreshToken = authManager.refreshToken;

      // First, invalidate tokens on server (while we still have access token)
      if (refreshToken != null) {
        try {
          await ref.read(authRepositoryProvider).logout(refreshToken);
        } catch (e) {
          // Ignore errors - we'll clear local session anyway
        }
      }

      // Then clear local auth session
      await authManager.logout();

      // Navigate to login page
      if (context.mounted) {
        context.router.replaceAll([const LoginRoute()]);
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.title),
                addHeight(8),
                Text(
                  'Practice. Improve. Succeed.',
                  style: TextStyles.hintThemeText,
                ),
              ],
            ),

            IconButton(
              icon: const Icon(Icons.logout, color: Colors.black87),
              tooltip: 'Logout',
              onPressed: () => _handleLogout(context, ref),
            ),
          ],
        ),
      ],
    );
  }
}
