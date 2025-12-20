import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/text_style.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final Widget child;
  final EdgeInsets? padding;
  final bool showHandle;

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.child,
    this.padding,
    this.showHandle = true,
  });

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required Widget child,
    EdgeInsets? padding,
    bool showHandle = true,
    bool isScrollControlled = true,
  }) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: Colors.transparent,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 30.h,
          left: 14.r,
          right: 14.r,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: isDarkMode ? const Color(0xFF28282A) : Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showHandle) ...[
                SizedBox(height: 12.h),
                Container(
                  width: 40.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: isDarkMode ? Colors.grey[700] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
                SizedBox(height: 12.h),
              ],
              Padding(
                padding:
                    padding ??
                    EdgeInsets.symmetric(horizontal: 14.r, vertical: 18.r),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      title,
                      style: TextStyles.fieldHeader.copyWith(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.h),
                    child,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF28282A) : Colors.white,
        borderRadius: BorderRadius.circular(35.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showHandle) ...[
            SizedBox(height: 12.h),
            Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[700] : Colors.grey[300],
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            SizedBox(height: 12.h),
          ],
          Padding(
            padding: padding ?? EdgeInsets.all(20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(height: 20.h),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
