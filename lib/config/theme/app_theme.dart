import 'package:flutter/material.dart';

import '../../common/styles/component_style.dart';
import '../../common/styles/text_style.dart';
import '../../constants/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.light,
      ),
      fontFamily: 'SF Pro Display',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
      ),
      outlinedButtonTheme: const OutlinedButtonThemeData(style: ButtonStyle()),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // Configure the input decoration theme for form fields.
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: TextStyles.hintThemeText,
        errorStyle: TextStyles.errorStyle,
        enabledBorder: inputBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: inputBorder,
        border: inputBorder,
        focusedBorder: focusedBorder,
      ),
      sliderTheme: SliderThemeData(
        thumbColor: AppColors.black,
        activeTrackColor: AppColors.ringColor,
        inactiveTrackColor: AppColors.outlinedColor,
        overlayShape: SliderComponentShape.noOverlay,
        trackHeight: 1,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: switchThumbColor,
        trackOutlineColor: switchTrackOutlineColor,
        trackColor: switchTrackColor,
      ),
    );
  }
}
