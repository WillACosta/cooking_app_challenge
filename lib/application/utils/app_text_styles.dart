import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle headline({
    Color? color,
    double? lineHeight,
  }) {
    return _getDefaultTextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: color,
      lineHeight: lineHeight,
    );
  }

  static TextStyle head({
    Color? color,
  }) {
    return _getDefaultTextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static TextStyle bodyHead({Color? color}) {
    return _getDefaultTextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static body({Color? color}) {
    return _getDefaultTextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle bodySmall({
    Color color = AppColors.secondary,
    double fontSize = 14,
  }) {
    return _getDefaultTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle bodySmallest({
    Color color = AppColors.secondary,
    double fontSize = 10,
  }) {
    return _getDefaultTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static _getDefaultTextStyle({
    Color? color,
    double? lineHeight,
    required FontWeight fontWeight,
    required double fontSize,
  }) {
    return GoogleFonts.poppins(
      height: lineHeight,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
