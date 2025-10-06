import 'package:ai_interview_mvp/common/components/Box/box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../config/router/app_router.dart';
import '../widgets/home_action_card.dart';
import '../widgets/home_header.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.7),
                Theme.of(context).colorScheme.secondary,
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  const HomeHeaderWidget(),

                  addHeight(60),

                  // Main Actions
                  Expanded(
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HomeActionCardWidget(
                              title: 'Start New Interview',
                              subtitle: 'Practice with AI interviewer',
                              icon: Icons.mic_rounded,
                              gradient: [
                                Colors.blue.shade600,
                                Colors.blue.shade400,
                              ],
                              onTap: () =>
                                  context.router.push(const InterviewRoute()),
                            ),

                            addHeight(24),

                            HomeActionCardWidget(
                              title: 'View Past Interviews',
                              subtitle: 'Review your performance',
                              icon: Icons.assessment_rounded,
                              gradient: [
                                Colors.purple.shade600,
                                Colors.purple.shade400,
                              ],
                              onTap: () => context.router.push(
                                const AnalysisResultsRoute(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
