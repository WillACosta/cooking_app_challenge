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
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 12,
        super(key: key);

  const CText.xxs(
    this.text, {
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 14,
        super(key: key);

  const CText.xs(
    this.text, {
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 16,
        super(key: key);

  const CText.sm(
    this.text, {
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 20,
        super(key: key);

  const CText.md(
    this.text, {
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 22,
        super(key: key);

  const CText.lg(
    this.text, {
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 32,
        super(key: key);

  const CText.xl(
    this.text, {
    Key? key,
    this.color = AppColors.text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.lineHeight,
  })  : fontSize = 40,
        super(key: key);

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
