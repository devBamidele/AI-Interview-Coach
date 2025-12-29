import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../config/router/app_router.dart';
import '../../../../constants/colors.dart';
import '../../application/user_interviews_notifier.dart';
import '../widgets/interview_list_item.dart';

@RoutePage()
class InterviewListPage extends HookConsumerWidget {
  const InterviewListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interviewsState = ref.watch(userInterviewsProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
            size: 20,
          ),
          onPressed: () => context.router.maybePop(),
        ),
        title: const Text('Interview History', style: TextStyles.appBarTitle),
      ),
      body: interviewsState.when(
        data: (response) {
          if (response == null) {
            // Trigger initial fetch
            Future.microtask(() {
              ref.read(userInterviewsProvider.notifier).fetchUserInterviews();
            });
            return const Center(
              child: LoadingIndicator(color: AppColors.primaryColor),
            );
          }

          if (response.interviews.isEmpty) {
            return _buildEmptyState(context, ref);
          }

          return _buildInterviewList(context, ref, response);
        },
        loading: () =>
            Center(child: LoadingIndicator(color: AppColors.primaryColor)),
        error: (error, stack) =>
            _buildErrorState(context, ref, error.toString()),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, WidgetRef ref) {
    return RefreshIndicator.adaptive(
      color: AppColors.primaryColor,
      onRefresh: () async {
        await ref.read(userInterviewsProvider.notifier).fetchUserInterviews();
      },
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.history_rounded,
                    size: 80,
                    color: Colors.grey.shade300,
                  ),
                  addHeight(16),
                  Text(
                    'No interviews yet',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  addHeight(8),
                  Text(
                    'Start your first interview to see it here',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, WidgetRef ref, String error) {
    return RefreshIndicator.adaptive(
      color: AppColors.primaryColor,
      onRefresh: () async {
        await ref.read(userInterviewsProvider.notifier).fetchUserInterviews();
      },
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    size: 80,
                    color: Colors.red.shade300,
                  ),
                  addHeight(16),
                  Text(
                    'Failed to load interviews',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  addHeight(8),
                  Text(
                    error,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInterviewList(BuildContext context, WidgetRef ref, response) {
    return RefreshIndicator.adaptive(
      color: AppColors.primaryColor,
      onRefresh: () async {
        await ref.read(userInterviewsProvider.notifier).fetchUserInterviews();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox.shrink(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
              itemCount: response.interviews.length,
              itemBuilder: (context, index) {
                final interview = response.interviews[index];
                return InterviewListItemWidget(
                  interview: interview,
                  onTap: () {
                    context.router.push(
                      InterviewDetailRoute(interviewId: interview.id),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
