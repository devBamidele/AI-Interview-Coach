import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rehearsecoach/constants/colors.dart';

import '../../../../common/components/components.dart';
import '../../../../constants/asset_paths.dart';

class SocialAuthButtons extends StatelessWidget {
  final VoidCallback onGooglePressed;
  final VoidCallback onApplePressed;
  final bool isGoogleLoading;
  final bool isAppleLoading;

  const SocialAuthButtons({
    super.key,
    required this.onGooglePressed,
    required this.onApplePressed,
    this.isGoogleLoading = false,
    this.isAppleLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (Platform.isIOS || Platform.isMacOS) ...[
          Expanded(
            child: OutlinedAppButton(
              onPress: onApplePressed,
              loading: isAppleLoading,
              child: Icon(Icons.apple_rounded, color: Colors.black, size: 29.r),
            ),
          ),
          addWidth(16),
        ],
        Expanded(
          child: OutlinedAppButton(
            onPress: onGooglePressed,
            loading: isGoogleLoading,
            loaderColor: AppColors.outlinedColor,
            child: Transform.scale(
              scale: 0.9,
              child: SvgPicture.asset(AppAssets.googleLogo),
            ),
          ),
        ),
      ],
    );
  }
}
