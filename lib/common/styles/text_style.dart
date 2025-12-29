import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class TextStyles {
  static TextStyle title = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'SF Pro Rounded',
    color: AppColors.black,
    fontSize: 26.sp,
    height: 1.2,
  );

  static TextStyle buttonText = const TextStyle(
    fontSize: 15,
    fontFamily: 'SF Pro Rounded',
    fontWeight: FontWeight.w500,
  );

  static TextStyle hintThemeText = const TextStyle(
    color: AppColors.hintTextColor,
    fontSize: 15.75,
    fontFamily: 'SF Pro Rounded',
    height: 1.4,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
  );

  static TextStyle hintText = hintThemeText.copyWith(fontSize: 13.sp);

  static TextStyle text = hintThemeText.copyWith(
    fontSize: 13.sp,
    color: AppColors.black,
  );

  static TextStyle errorStyle = TextStyle(
    color: AppColors.errorBorderColor.withValues(alpha: .7),
    fontSize: 13,
    fontFamily: 'SF Pro Rounded',
    height: 1.4,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
  );

  static TextStyle fieldHeader = const TextStyle(
    fontSize: 15,
    fontFamily: 'SF Pro Rounded',
    color: AppColors.black,
  );

  static const TextStyle appBarTitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'SF Pro Rounded',
    fontSize: 18,
    color: AppColors.black,
    letterSpacing: -0.3,
  );
}
