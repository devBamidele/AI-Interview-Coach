import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/components/Box/box.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../constants/colors.dart';
import '../../application/interview_state.dart';

class ConnectionStatusWidget extends StatelessWidget {
  final InterviewState state;

  const ConnectionStatusWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final isConnected = state.isConnected;
    final status = state.statusText;
    final errorMessage = state.errorMessage;

    return Column(
      children: [
        // Status indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 12.w,
              height: 12.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isConnected ? Colors.green : AppColors.hintTextColor,
                boxShadow: isConnected
                    ? [
                        BoxShadow(
                          color: Colors.green.withValues(alpha: 0.5),
                          blurRadius: 4.r,
                          spreadRadius: 1.r,
                        ),
                      ]
                    : null,
              ),
            ),
            addWidth(8),
            Text(
              'Status: $status',
              style: TextStyles.text.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        // Error display
        if (errorMessage.isNotEmpty) ...[
          addHeight(12),
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: AppColors.errorBorderColor.withValues(alpha: 0.1),
              border: Border.all(
                color: AppColors.errorBorderColor.withValues(alpha: 0.3),
              ),
              borderRadius: BorderRadius.circular(8.r),
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
                    errorMessage,
                    style: TextStyles.text.copyWith(
                      color: AppColors.errorBorderColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
