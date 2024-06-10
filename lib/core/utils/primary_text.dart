import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;
  final String? fontFamily;
  final TextAlign? textAlign;

  const PrimaryText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w500,
    this.color = AppColors.appBlackColor,
    this.size = 14,
    this.height = 1.4,
    this.fontFamily,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.getFont(
        fontFamily ?? 'Plus Jakarta Sans',
        textStyle: TextStyle(
          color: color,
          height: height,
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
