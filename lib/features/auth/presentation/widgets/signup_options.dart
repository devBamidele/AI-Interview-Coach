import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../common/utils/app_utils.dart';
import '../../../../constants/asset_paths.dart';
import '../../../../constants/colors.dart';

class SignupOptions extends StatelessWidget {
  const SignupOptions({super.key});

  void signUpWithGoogle() {}

  void signUpWithApple() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (Platform.isIOS || Platform.isMacOS) ...[
          OutlinedAppButton(
            onPress: signUpWithApple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.apple_rounded, color: Colors.black, size: 29.r),
                addWidth(6),
                Text(
                  "Sign up with Apple",
                  style: TextStyles.buttonText.copyWith(
                    color: AppColors.hintTextColor,
                    fontSize: AppUtils.scale(17),
                  ),
                ),
              ],
            ),
          ),
        ],
        Padding(
          padding: EdgeInsets.only(top: 14.r),
          child: OutlinedAppButton(
            onPress: signUpWithGoogle,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 0.9,
                  child: SvgPicture.asset(AppAssets.googleLogo),
                ),
                addWidth(8),
                Text(
                  "Sign up with Google",
                  style: TextStyles.buttonText.copyWith(
                    color: AppColors.hintTextColor,
                    fontSize: AppUtils.scale(17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void showSignUpOptionsSheet(BuildContext context) {
  CustomBottomSheet.show(
    context: context,
    title: 'Sign up options',
    child: SignupOptions(),
    showHandle: false,
  );
}
