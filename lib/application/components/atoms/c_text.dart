// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';

class CText extends StatelessWidget {
  final double fontSize;

  final String text;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final double? lineHeight;

  const CText.xxxs(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 12;

  const CText.xxs(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 14;

  const CText.xs(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 16;

  const CText.sm(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 20;

  const CText.md(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 22;

  const CText.lg(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 32;

  const CText.xl(
    this.text, {
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  }) : fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: lineHeight,
      ),
    );
  }
}
