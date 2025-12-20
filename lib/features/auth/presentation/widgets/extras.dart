import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/components/Box/box.dart';
import '../../../../common/styles/text_style.dart';
import '../../../../constants/colors.dart';

// Requirements
const List<String> requirements = [
  'Be at least 8 characters or more',
  'At least 1 uppercase and lowercase letter',
  'Must contain a digit or a number',
  "Must contain a special character e.g'@\$!%*?&'. ",
];

Row passwordRequirementRow(
  String text, {
  required bool checked,
  required bool hasStartedTyping,
}) {
  TextStyle textStyle = ScreenUtil().screenWidth > 500
      ? TextStyles.hintThemeText
      : TextStyles.hintText;

  // Determine icon and color based on state
  IconData icon;
  Color iconColor;
  Color? textColor;

  if (!hasStartedTyping) {
    // Neutral state - user hasn't started typing
    icon = Icons.check;
    iconColor = AppColors.hintTextColor;
    textColor = null;
  } else if (checked) {
    // Success state - requirement is met
    icon = Icons.check;
    iconColor = Colors.green.shade300;
    textColor = Colors.green.shade300;
  } else {
    // Error state - requirement is not met
    icon = Icons.close;
    iconColor = Colors.red.shade300;
    textColor = Colors.red.shade300;
  }

  return Row(
    children: [
      Icon(icon, color: iconColor, size: 18),
      addWidth(8),
      Expanded(
        child: Text(
          text,
          style: textStyle.copyWith(color: textColor),
          softWrap: true,
          overflow: TextOverflow.visible,
        ),
      ),
    ],
  );
}

/// Password visibility toggle icon button
IconButton passwordVisibilityIcon({
  required ValueNotifier<bool> isPasswordVisible,
  required FocusNode focusNode,
  required VoidCallback onToggle,
}) {
  return IconButton(
    icon: Icon(
      isPasswordVisible.value ? Icons.visibility_off : Icons.visibility,
      color: focusNode.hasFocus ? AppColors.black : AppColors.hintTextColor,
    ),
    onPressed: onToggle,
  );
}
