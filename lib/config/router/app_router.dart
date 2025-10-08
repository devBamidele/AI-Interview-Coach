import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/interview/presentation/pages/analysis_results_page.dart';
import '../../features/interview/presentation/pages/home_page.dart';
import '../../features/interview/presentation/pages/interview_detail_page.dart';
import '../../features/interview/presentation/pages/interview_list_page.dart';
import '../../features/interview/presentation/pages/interview_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: InterviewRoute.page),
        AutoRoute(page: AnalysisResultsRoute.page),
        AutoRoute(page: InterviewListRoute.page),
        AutoRoute(page: InterviewDetailRoute.page),
      ];
}
