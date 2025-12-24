import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/components/components.dart';
import '../../../../constants/colors.dart';

class CountdownTimerWidget extends HookWidget {
  final int durationSeconds;
  final VoidCallback? onComplete;
  final bool isCollapsible;

  const CountdownTimerWidget({
    super.key,
    this.durationSeconds = 300, // 5 minutes default
    this.onComplete,
    this.isCollapsible = true,
  });

  @override
  Widget build(BuildContext context) {
    final elapsed = useState(0);
    final isRunning = useState(true);
    final isCollapsed = useState(false);

    useEffect(() {
      if (!isRunning.value) return null;

      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        elapsed.value++;

        if (elapsed.value >= durationSeconds) {
          timer.cancel();
          isRunning.value = false;
          onComplete?.call();
        }
      });

      return timer.cancel;
    }, [isRunning.value]);

    final remaining = durationSeconds - elapsed.value;
    final minutes = remaining ~/ 60;
    final seconds = remaining % 60;
    final isWarning = remaining < 120; // Last 2 minutes

    if (isCollapsed.value && isCollapsible) {
      return _buildCollapsedView(context, minutes, seconds, isWarning, () {
        isCollapsed.value = false;
      });
    }

    return _buildExpandedView(
      context,
      minutes,
      seconds,
      isWarning,
      isCollapsible
          ? () {
              isCollapsed.value = true;
            }
          : null,
    );
  }

  Widget _buildExpandedView(
    BuildContext context,
    int minutes,
    int seconds,
    bool isWarning,
    VoidCallback? onCollapse,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: isWarning
            ? AppColors.errorBorderColor.withValues(alpha: 0.05)
            : AppColors.inputBackGround.withValues(alpha: 0.5),
        border: Border(
          bottom: BorderSide(
            color: isWarning
                ? AppColors.errorBorderColor.withValues(alpha: 0.2)
                : AppColors.outlinedColor.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.timer_rounded,
            color: isWarning ? AppColors.errorBorderColor : AppColors.black,
            size: 20.sp,
          ),
          addWidth(8),
          Text(
            '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
            style: TextStyle(
              fontFamily: 'SF Pro Rounded',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: isWarning ? AppColors.errorBorderColor : AppColors.black,
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
          if (isWarning) ...[
            addWidth(8),
            Icon(
              Icons.warning_rounded,
              color: AppColors.errorBorderColor,
              size: 20.sp,
            ),
          ],
          if (onCollapse != null) ...[
            const Spacer(),
            IconButton(
              onPressed: onCollapse,
              icon: Icon(
                Icons.keyboard_arrow_up_rounded,
                size: 20.sp,
                color: AppColors.hintTextColor,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCollapsedView(
    BuildContext context,
    int minutes,
    int seconds,
    bool isWarning,
    VoidCallback onExpand,
  ) {
    return InkWell(
      onTap: onExpand,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isWarning
              ? AppColors.errorBorderColor.withValues(alpha: 0.05)
              : AppColors.inputBackGround.withValues(alpha: 0.5),
          border: Border(
            bottom: BorderSide(
              color: isWarning
                  ? AppColors.errorBorderColor.withValues(alpha: 0.2)
                  : AppColors.outlinedColor.withValues(alpha: 0.3),
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timer_rounded,
              color: isWarning ? AppColors.errorBorderColor : AppColors.black,
              size: 16.sp,
            ),
            addWidth(6),
            Text(
              '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
              style: TextStyle(
                fontFamily: 'SF Pro Rounded',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: isWarning ? AppColors.errorBorderColor : AppColors.black,
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
            addWidth(6),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 16.sp,
              color: AppColors.hintTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
