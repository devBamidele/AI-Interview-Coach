import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../constants/colors.dart';
import '../../application/transcription_notifier.dart';

/// Widget displaying live transcription with analysis
class TranscriptionPanel extends ConsumerWidget {
  const TranscriptionPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(transcriptionProvider);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.outlinedColor.withValues(alpha: 0.5),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header - redesigned
          _buildHeader(context, state),

          // Divider
          Divider(
            height: 1,
            thickness: 1,
            color: AppColors.outlinedColor.withValues(alpha: 0.3),
          ),

          // Transcript content
          Expanded(
            child: _buildContent(context, state),
          ),

          // Error display
          if (state.error != null) _buildError(state.error!),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, TranscriptionState state) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: AppColors.inputBackGround.withValues(alpha: 0.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      child: Row(
        children: [
          Icon(
            state.isTranscribing ? Icons.mic : Icons.mic_off,
            color: state.isTranscribing
                ? AppColors.errorBorderColor
                : AppColors.hintTextColor,
            size: 20.sp,
          ),
          addWidth(8),
          Text(
            state.isTranscribing ? 'Live Transcription' : 'Transcription',
            style: TextStyles.fieldHeader.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
            ),
          ),
          const Spacer(),
          if (state.isTranscribing)
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 5.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.errorBorderColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(
                'RECORDING',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, TranscriptionState state) {
    if (state.fullTranscript.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              state.isTranscribing ? Icons.mic : Icons.text_snippet_outlined,
              size: 48.sp,
              color: AppColors.hintTextColor.withValues(alpha: 0.5),
            ),
            addHeight(12),
            Text(
              state.isTranscribing ? 'Listening...' : 'No transcript yet',
              style: TextStyles.hintThemeText.copyWith(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: SelectableText(
        state.fullTranscript,
        style: TextStyles.text.copyWith(
          fontSize: 14.sp,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildError(String error) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: AppColors.errorBorderColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: AppColors.errorBorderColor,
            size: 20.sp,
          ),
          addWidth(8),
          Expanded(
            child: Text(
              error,
              style: TextStyles.errorStyle.copyWith(fontSize: 13.sp),
            ),
          ),
        ],
      ),
    );
  }
}
