import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({
  required String text,
  required Color color,
  required double fontSize,
  FontWeight? fontWeight,
  bool? hasUnderline,
}) {
  return Text(
    text,
    style: GoogleFonts.darkerGrotesque(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: hasUnderline == null ? null : TextDecoration.underline),
  );
}
