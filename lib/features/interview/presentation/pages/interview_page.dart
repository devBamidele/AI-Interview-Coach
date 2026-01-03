import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/component_style.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../common/utils/responsive_utils.dart';
import '../../../../constants/colors.dart';
import '../../../auth/application/auth_notifier.dart';
import '../../application/connection_params_builder.dart';
import '../../application/consent_manager.dart';
import '../../application/interview_notifier.dart';
import '../../application/interview_state.dart';
import '../widgets/case_question_banner.dart';
import '../widgets/connection_status.dart';
import '../widgets/countdown_timer_widget.dart';
import '../widgets/interview_consent_dialog.dart';
import '../widgets/interview_controls.dart';
import '../widgets/network_strength_indicator.dart';
import '../widgets/transcription_panel.dart';
import '../widgets/video_preview.dart';

@RoutePage()
class InterviewPage extends HookConsumerWidget {
  const InterviewPage({super.key});

  Future<void> _connectToInterview(BuildContext context, WidgetRef ref) async {
    // Check if consent already granted
    final hasConsent = ref.read(consentManagerProvider.notifier).hasConsent();

    if (!hasConsent) {
      // Show consent dialog only if not granted before
      final consent = await InterviewConsentDialog.show(context);

      if (consent != true) return; // User declined

      // User accepted - save consent immediately (fire-and-forget, will complete even if page unmounts)
      // This must happen before mounted check to ensure consent is always saved when user accepts
      ref.read(consentManagerProvider.notifier).grantConsent();

      // Check if still mounted after async dialog
      if (!context.mounted) return;
    }

    // Check if still mounted after potential async operations
    if (!context.mounted) return;

    // Proceed with connection (whether consent was just granted or already existed)
    final authState = ref.read(authProvider);
    final paramsBuilder = ref.read(connectionParamsBuilderProvider);

    final params = await paramsBuilder.buildParams(authState: authState);

    // Check if still mounted before connecting
    if (!context.mounted) return;

    await ref.read(interviewProvider.notifier).connect(params);
  }

  Future<void> _disconnectFromInterview(WidgetRef ref) async {
    await ref.read(interviewProvider.notifier).disconnect();
  }

  Future<void> _completeInterview(WidgetRef ref) async {
    await ref.read(interviewProvider.notifier).completeInterview();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interviewState = ref.watch(interviewProvider);
    final isMobile = ResponsiveUtils.isMobile(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: SafeArea(
          child: Column(
            children: [
              // Case Question Banner (collapsible)
              if (interviewState.isConnected) const CaseQuestionBanner(),

              // Countdown Timer (collapsible)
              if (interviewState.isConnected)
                CountdownTimerWidget(
                  onComplete: () => _showTimeUpSnackbar(context),
                ),

              // Main content - responsive layout
              Expanded(
                child: isMobile
                    ? _buildMobileLayout(context, interviewState, ref)
                    : _buildDesktopLayout(context, interviewState, ref),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.black,
          size: 20,
        ),
        onPressed: () => context.router.maybePop(),
      ),
      title: const Text('AI Interview', style: TextStyles.appBarTitle),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: const NetworkStrengthIndicator(),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    InterviewState state,
    WidgetRef ref,
  ) {
    return SingleChildScrollView(
      padding: pagePadding,
      child: Column(
        children: [
          addHeight(16),

          // Video Preview (top on mobile)
          VideoPreviewWidget(state: state),

          addHeight(20),

          // Connection Status
          ConnectionStatusWidget(state: state),

          addHeight(20),

          // Interview Controls
          InterviewControlsWidget(
            state: state,
            onConnect: () => _connectToInterview(context, ref),
            onDisconnect: () => _disconnectFromInterview(ref),
            onComplete: () => _completeInterview(ref),
          ),

          addHeight(24),

          // Transcription Panel (bottom on mobile, full width)
          SizedBox(height: 400.h, child: const TranscriptionPanel()),

          addHeight(24),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    InterviewState state,
    WidgetRef ref,
  ) {
    return Padding(
      padding: pagePadding,
      child: Row(
        children: [
          // Left side: Video and controls
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  VideoPreviewWidget(state: state),
                  addHeight(20),
                  ConnectionStatusWidget(state: state),
                  addHeight(20),
                  InterviewControlsWidget(
                    state: state,
                    onConnect: () => _connectToInterview(context, ref),
                    onDisconnect: () => _disconnectFromInterview(ref),
                    onComplete: () => _completeInterview(ref),
                  ),
                ],
              ),
            ),
          ),

          addWidth(24),

          // Right side: Transcription panel
          Expanded(child: const TranscriptionPanel()),
        ],
      ),
    );
  }

  void _showTimeUpSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Time is up! Please complete your interview.'),
        backgroundColor: AppColors.errorBorderColor,
      ),
    );
  }
}
