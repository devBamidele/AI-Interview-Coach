import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppUtils {
  static double? scale(double size) {
    return ScreenUtil().screenWidth > 500 ? size : null;
  }
}
