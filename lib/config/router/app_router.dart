import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/interview/presentation/pages/analysis_results_page.dart';
import '../../features/interview/presentation/pages/home_page.dart';
import '../../features/interview/presentation/pages/interview_detail_page.dart';
import '../../features/interview/presentation/pages/interview_list_page.dart';
import '../../features/interview/presentation/pages/interview_page.dart';
import 'auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final _authGuard = AuthGuard();

  @override
  List<AutoRoute> get routes => [
        // Auth routes (no guard)
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignupRoute.page),

        // Protected routes (with auth guard)
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          guards: [_authGuard],
        ),
        AutoRoute(
          page: InterviewRoute.page,
          guards: [_authGuard],
        ),
        AutoRoute(
          page: AnalysisResultsRoute.page,
          guards: [_authGuard],
        ),
        AutoRoute(
          page: InterviewListRoute.page,
          guards: [_authGuard],
        ),
        AutoRoute(
          page: InterviewDetailRoute.page,
          guards: [_authGuard],
        ),
      ];
}
