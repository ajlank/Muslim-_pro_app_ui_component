import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:muslim_pro_ui/core/colors/colors.dart';

class AppStyle {
  static final TextStyle shahiBukhariTextStyle = TextStyle(
    color: Color(0xFF3E4E63),
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle lastReadTextStyle = TextStyle(
    color: AppColors.lastReadTextColor,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static final BorderRadiusGeometry borderRad = BorderRadius.circular(10.0);
  static final double lastReadSize = 14.0;
  static final double shahiBukhariTextSize = 16.0;
  static final double containerHeight = 40.0;
  static final double containerWidth = 29.0;
  static final double parentContainerHeight = 70.0;
  static final double parentContainerWidth = 347;
}
