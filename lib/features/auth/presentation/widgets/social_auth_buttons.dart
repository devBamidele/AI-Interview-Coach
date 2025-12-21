import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/components/components.dart';
import '../../../../constants/asset_paths.dart';

class SocialAuthButtons extends StatelessWidget {
  final VoidCallback onGooglePressed;
  final VoidCallback onApplePressed;

  const SocialAuthButtons({
    super.key,
    required this.onGooglePressed,
    required this.onApplePressed,
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
              child: Icon(Icons.apple_rounded, color: Colors.black, size: 29.r),
            ),
          ),
          addWidth(16),
        ],
        Expanded(
          child: OutlinedAppButton(
            onPress: onGooglePressed,
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
