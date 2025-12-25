import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../common/utils/responsive_utils.dart';
import '../../../../config/router/app_router.dart';
import '../../../../constants/colors.dart';
import '../../application/interview_state.dart';

class InterviewControlsWidget extends StatelessWidget {
  final InterviewState state;
  final VoidCallback onConnect;
  final VoidCallback onDisconnect;
  final VoidCallback? onComplete;

  const InterviewControlsWidget({
    super.key,
    required this.state,
    required this.onConnect,
    required this.onDisconnect,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;
    final isCompleting = state.isCompleting;
    final isAnalyzing = state.isAnalyzing;
    final isMobile = ResponsiveUtils.isMobile(context);

    // Show loading during completion/analysis
    if (isCompleting || isAnalyzing) {
      return _buildLoadingState(context);
    }

    // Show analysis complete state with View Results button
    if (state.isAnalysisComplete) {
      return _buildCompleteState(context);
    }

    // Show connect button
    if (!isConnected) {
      return _buildConnectButton(isMobile);
    }

    // Show complete and disconnect buttons when connected
    return _buildConnectedButtons(isMobile);
  }

  Widget _buildLoadingState(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
          width: 40.w,
          child: CircularProgressIndicator(
            strokeWidth: 3,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.buttonColor),
          ),
        ),
        addHeight(16),
        Text(
          state.statusText,
          style: TextStyles.text.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildCompleteState(BuildContext context) {
    final interviewId = state.interviewId;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.green.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.check_circle, color: Colors.green, size: 48),
        ),
        addHeight(16),
        Text(
          'Interview Complete!',
          style: TextStyles.fieldHeader.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        addHeight(8),
        Text(
          'Your analysis is ready',
          style: TextStyles.hintThemeText.copyWith(fontSize: 14),
        ),
        addHeight(24),
        AppButton(
          onPress: interviewId != null
              ? () {
                  context.router.push(
                    InterviewDetailRoute(interviewId: interviewId),
                  );
                }
              : null,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.assessment_rounded, size: 20),
              addWidth(8),
              Text(
                'View Results',
                style: TextStyles.buttonText.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildConnectButton(bool isMobile) {
    return AppButton(
      onPress: onConnect,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.call, size: 20),
          addWidth(8),
          Text(
            'Join Interview',
            style: TextStyles.buttonText.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildConnectedButtons(bool isMobile) {
    if (isMobile) {
      // Mobile: Stacked buttons
      return Column(
        children: [
          AppButton(
            onPress: onComplete,
            color: Colors.green,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outline, size: 20),
                addWidth(8),
                Text(
                  'Complete Interview',
                  style: TextStyles.buttonText.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          addHeight(12),
          OutlinedAppButton(
            onPress: onDisconnect,
            borderColor: AppColors.errorBorderColor,
            textColor: AppColors.errorBorderColor,
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call_end,
                  size: 20,
                  color: AppColors.errorBorderColor,
                ),
                addWidth(8),
                Text('Cancel'),
              ],
            ),
          ),
        ],
      );
    }

    // Desktop: Side by side buttons
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: AppButton(
            onPress: onComplete,
            color: Colors.green,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outline, size: 20),
                addWidth(8),
                Text(
                  'Complete Interview',
                  style: TextStyles.buttonText.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        addWidth(16),
        Flexible(
          child: OutlinedAppButton(
            onPress: onDisconnect,
            borderColor: AppColors.errorBorderColor,
            textColor: AppColors.errorBorderColor,
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call_end,
                  size: 20,
                  color: AppColors.errorBorderColor,
                ),
                addWidth(8),
                Text('Cancel'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
