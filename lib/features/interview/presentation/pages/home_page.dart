import 'package:rehearsecoach/common/components/Box/box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/styles/component_style.dart';
import '../../../../config/router/app_router.dart';
import '../../../auth/application/auth_manager.dart';
import '../widgets/home_action_card.dart';
import '../widgets/home_header.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authManagerProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(40),

              // Header
              const HomeHeaderWidget(),

              addHeight(48),

              // Main Actions
              HomeActionCardWidget(
                title: 'Start New Interview',
                subtitle: 'Practice with AI interviewer',
                icon: Icons.mic_rounded,
                onTap: () => context.router.push(const InterviewRoute()),
              ),

              addHeight(16),

              // Only show "View Past Interviews" for authenticated users
              if (authState.isLoggedIn)
                HomeActionCardWidget(
                  title: 'View Past Interviews',
                  subtitle: 'Review your performance',
                  icon: Icons.assessment_rounded,
                  onTap: () => context.router.push(const InterviewListRoute()),
                ),

              addHeight(40),
            ],
          ),
        ),
      ),
    );
  }
}
