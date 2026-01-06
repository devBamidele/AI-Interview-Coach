import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    final scrollController = useScrollController();

    // Setup scroll listener for infinite scroll
    useEffect(() {
      void onScroll() {
        // Check if user has scrolled to 80% of the list
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent * 0.8) {
          // Trigger loading next page
          ref.read(userInterviewsProvider.notifier).loadNextPage();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

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

          if (response.isEmpty) {
            return _buildEmptyState(context, ref);
          }

          return _buildInterviewList(context, ref, response, scrollController);
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
        await ref.read(userInterviewsProvider.notifier).refresh();
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
        await ref.read(userInterviewsProvider.notifier).refresh();
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

  Widget _buildInterviewList(
    BuildContext context,
    WidgetRef ref,
    response,
    ScrollController scrollController,
  ) {
    // Calculate item count: interviews + loading indicator if has more pages
    final itemCount =
        response.interviews.length + (response.hasNextPage ? 1 : 0);

    return RefreshIndicator.adaptive(
      color: AppColors.primaryColor,
      onRefresh: () async {
        await ref.read(userInterviewsProvider.notifier).refresh();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Show total count
          // if (response.total > 0)
          //   Padding(
          //     padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          //     child: Text(
          //       '${response.total} interview${response.total == 1 ? '' : 's'}',
          //       style: TextStyle(
          //         fontSize: 14,
          //         color: Colors.grey.shade600,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ),
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
              itemCount: itemCount,
              itemBuilder: (context, index) {
                // Show interview items
                if (index < response.interviews.length) {
                  final interview = response.interviews[index];
                  return InterviewListItemWidget(
                    interview: interview,
                    onTap: () {
                      context.router.push(
                        InterviewDetailRoute(interviewId: interview.id),
                      );
                    },
                  );
                }

                // Show loading indicator at bottom while fetching next page
                if (response.hasNextPage && response.isLoadingMore) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: LoadingIndicator(color: AppColors.primaryColor),
                    ),
                  );
                }

                // Show "No more interviews" message when all loaded
                if (!response.hasNextPage) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        'No more interviews',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
