import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../../../config/router/app_router.dart';
import '../../application/user_interviews_notifier.dart';
import '../widgets/interview_list_item.dart';

@RoutePage()
class InterviewListPage extends HookConsumerWidget {
  const InterviewListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interviewsState = ref.watch(userInterviewsProvider);

    // Fetch interviews on first load
    ref.listen(userInterviewsProvider, (previous, next) {
      if (previous == null && next is AsyncData && next.value == null) {
        // First load - fetch interviews
        ref
            .read(userInterviewsProvider.notifier)
            .fetchUserInterviews();
      }
    });

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => context.router.maybePop(),
        ),
        title: const Text(
          'Interview History',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              ref
                  .read(userInterviewsProvider.notifier)
                  .fetchUserInterviews();
            },
          ),
        ],
      ),
      body: interviewsState.when(
        data: (response) {
          if (response == null) {
            // Trigger initial fetch
            Future.microtask(() {
              ref
                  .read(userInterviewsProvider.notifier)
                  .fetchUserInterviews();
            });
            return const Center(child: CircularProgressIndicator());
          }

          if (response.interviews.isEmpty) {
            return _buildEmptyState(context);
          }

          return _buildInterviewList(context, ref, response);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => _buildErrorState(context, error.toString()),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
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
    );
  }

  Widget _buildErrorState(BuildContext context, String error) {
    return Center(
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
    );
  }

  Widget _buildInterviewList(
    BuildContext context,
    WidgetRef ref,
    response,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            '${response.total} ${response.total == 1 ? 'Interview' : 'Interviews'}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
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
    );
  }
}
