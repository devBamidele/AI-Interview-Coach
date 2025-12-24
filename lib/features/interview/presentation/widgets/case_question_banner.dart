import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livekit_client/livekit_client.dart';

import '../../../../common/components/Box/box.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../constants/colors.dart';

class CaseQuestionBanner extends HookWidget {
  final Room? room;

  const CaseQuestionBanner({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    final isCollapsed = useState(false);

    if (room == null || room!.metadata == null || room!.metadata!.isEmpty) {
      return const SizedBox.shrink();
    }

    try {
      final metadataJson = jsonDecode(room!.metadata!);
      final caseQuestion = metadataJson['caseQuestion'] as String?;
      final difficulty = metadataJson['difficulty'] as String?;

      if (caseQuestion == null) return const SizedBox.shrink();

      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonColor.withValues(alpha: 0.05),
          border: Border(
            bottom: BorderSide(
              color: AppColors.buttonColor.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header (always visible, tappable)
            InkWell(
              onTap: () => isCollapsed.value = !isCollapsed.value,
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.business_center_rounded,
                      color: AppColors.buttonColor,
                      size: 20.sp,
                    ),
                    addWidth(8),
                    Text(
                      'Market Sizing Case',
                      style: TextStyles.text.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.buttonColor,
                        fontSize: 15.sp,
                      ),
                    ),
                    const Spacer(),
                    if (difficulty != null && !isCollapsed.value)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: _getDifficultyColor(difficulty),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          difficulty.toUpperCase(),
                          style: TextStyles.text.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 10.sp,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    addWidth(8),
                    Icon(
                      isCollapsed.value
                          ? Icons.keyboard_arrow_down_rounded
                          : Icons.keyboard_arrow_up_rounded,
                      color: AppColors.buttonColor,
                      size: 20.sp,
                    ),
                  ],
                ),
              ),
            ),

            // Question content (collapsible)
            if (!isCollapsed.value)
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  bottom: 16.h,
                ),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(maxHeight: 200.h),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: AppColors.inputBackGround.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      caseQuestion,
                      style: TextStyles.text.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
    } catch (e) {
      return const SizedBox.shrink();
    }
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return Colors.green.shade200;
      case 'medium':
        return Colors.orange.shade200;
      case 'hard':
        return Colors.red.shade200;
      default:
        return AppColors.inputBackGround;
    }
  }
}
