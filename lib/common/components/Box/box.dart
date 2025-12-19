import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox addHeight(double height, {bool isRsv = true}) =>
    SizedBox(height: isRsv ? height.h : height);

SizedBox addWidth(double width, {bool isRsv = true}) =>
    SizedBox(width: isRsv ? width.w : width);
