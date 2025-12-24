import 'package:ai_interview_mvp/config/router/app_router.dart';
import 'package:ai_interview_mvp/constants/colors.dart';
import 'package:ai_interview_mvp/features/auth/application/auth_manager.dart';
import 'package:ai_interview_mvp/features/auth/application/device_id_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final theme = Theme.of(context);

    final controller = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );

    final fadeAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
    ).drive(Tween<double>(begin: 0.0, end: 1.0));

    final scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
    ).drive(Tween<double>(begin: 0.8, end: 1.0));

    useEffect(() {
      controller.forward();
      return null; // cleanup not needed
    }, const []);

    // Watch auth state to navigate when initialized
    ref.listen(authManagerProvider, (previous, next) {
      if (next.isInitialized) {
        // Wait for animation to complete before navigating
        Future.delayed(const Duration(milliseconds: 1000), () async {
          if (!context.mounted) return;

          if (next.isLoggedIn) {
            // Authenticated user -> go to home
            context.router.replaceAll([const HomeRoute()]);
          } else {
            // Not authenticated -> check if anonymous user (has device ID)
            final deviceIdManager = ref.read(deviceIdManagerProvider);
            final deviceId = await deviceIdManager.getDeviceId();

            if (!context.mounted) return;

            if (deviceId != null) {
              // Anonymous user with device ID -> go to home
              context.router.replaceAll([const HomeRoute()]);
            } else {
              // No auth and no device ID -> go to login
              context.router.replaceAll([const LoginRoute()]);
            }
          }
        });
      }
    });

    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF1C1C1E) : Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: fadeAnimation,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Text(
              "Rehearse",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontSize: 40,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                height: 1.4,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
