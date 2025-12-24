import 'package:flutter/material.dart';

/// Utility class for responsive design breakpoints and helpers
class ResponsiveUtils {
  // Breakpoint definitions (matching industry standards)
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 900;

  /// Check if current screen width is mobile (<600px)
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobileBreakpoint;
  }

  /// Check if current screen width is tablet (600-900px)
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= mobileBreakpoint && width < tabletBreakpoint;
  }

  /// Check if current screen width is desktop (>900px)
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= tabletBreakpoint;
  }

  /// Get responsive value based on screen size
  /// Returns appropriate value for mobile, tablet, or desktop
  /// Falls back to mobile value if tablet/desktop not provided
  static T responsive<T>({
    required BuildContext context,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    } else if (isTablet(context)) {
      return tablet ?? mobile;
    }
    return mobile;
  }
}
