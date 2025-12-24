import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livekit_client/livekit_client.dart';

import '../../../../common/utils/responsive_utils.dart';
import '../../../../constants/colors.dart';
import '../../application/interview_state.dart';

class VideoPreviewWidget extends StatelessWidget {
  final InterviewState state;

  const VideoPreviewWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;
    final videoTrack = state.videoTrack;

    if (!isConnected) {
      return const SizedBox.shrink();
    }

    // Responsive sizing
    final containerWidth = ResponsiveUtils.responsive<double>(
      context: context,
      mobile: MediaQuery.of(context).size.width - 28.w, // Full width minus padding
      tablet: 500,
      desktop: 600,
    );

    final containerHeight = ResponsiveUtils.responsive<double>(
      context: context,
      mobile: containerWidth * 0.75, // 4:3 aspect ratio on mobile
      tablet: 400,
      desktop: 400,
    );

    if (videoTrack != null) {
      return Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.outlinedColor.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: VideoTrackRenderer(videoTrack, fit: VideoViewFit.cover),
        ),
      );
    }

    // Audio only mode - redesigned
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: AppColors.inputBackGround,
        border: Border.all(
          color: AppColors.outlinedColor.withValues(alpha: 0.5),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: AppColors.buttonColor.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.mic,
              size: 48.sp,
              color: AppColors.buttonColor,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Audio Only',
            style: TextStyle(
              color: AppColors.hintTextColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
