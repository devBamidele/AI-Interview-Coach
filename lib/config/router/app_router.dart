import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/interview/presentation/pages/home_page.dart';
import '../../features/interview/presentation/pages/interview_detail_page.dart';
import '../../features/interview/presentation/pages/interview_list_page.dart';
import '../../features/interview/presentation/pages/interview_page.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final Ref ref;

  AppRouter(this.ref);

  @override
  List<AutoRoute> get routes => [
    // Splash screen (initial route)
    AutoRoute(page: SplashRoute.page, initial: true),

    // Auth routes (no guard)
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignupRoute.page),

    // Public routes (accessible to anonymous users)
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: InterviewRoute.page),

    // Analysis results - supports both current session (no ID) and historical (with ID)
    // Public route for current session analysis (anonymous users)
    AutoRoute(page: InterviewDetailRoute.page),

    AutoRoute(page: InterviewListRoute.page),
  ];
}

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter(ref);
});
