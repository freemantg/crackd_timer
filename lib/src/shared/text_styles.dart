import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static const String circularStandard = 'Circular Standard';
}

class TextStyles {
  static const TextStyle circularStandard = TextStyle(
    fontFamily: Fonts.circularStandard,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static TextStyle roboto = GoogleFonts.roboto();

  static TextStyle get h1 => TextStyles.circularStandard
      .copyWith(fontWeight: FontWeight.w600, fontSize: 24);
  static TextStyle get h2 => h1.copyWith(fontSize: 17);
  static TextStyle get title1 =>
      roboto.copyWith(fontWeight: FontWeight.bold, fontSize: 15);
  static TextStyle get title2 => title1.copyWith(fontWeight: FontWeight.normal);
  static TextStyle get body1 =>
      roboto.copyWith(fontWeight: FontWeight.normal, fontSize: 13);
  static TextStyle get body2 => body1.copyWith(fontSize: 12);
  static TextStyle get caption => roboto.copyWith(
      fontWeight: FontWeight.w500, fontSize: 11, color: Colors.white);

  static TextStyle get h1Dark => h1.copyWith(color: const Color(0xFF1E1E1E));
  static TextStyle get h2Dark => h2.copyWith(color: const Color(0xFF1E1E1E));
  static TextStyle get title1Dark =>
      title1.copyWith(color: const Color(0xFF1E1E1E));
  static TextStyle get title2Dark =>
      title2.copyWith(color: const Color(0xFF1E1E1E));
  static TextStyle get body1Dark =>
      body1.copyWith(color: const Color(0xFF1E1E1E));
  static TextStyle get captionDark => caption.copyWith(color: Colors.grey[600]);
}
