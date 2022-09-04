import 'package:flutter/material.dart';

import 'styles.dart';

class Fonts {
  static const String circularStandard = 'Circular Standard';
}

class TextStyles {
  static const TextStyle circularStandard = TextStyle(
    fontFamily: Fonts.circularStandard,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static TextStyle get h1 => TextStyles.circularStandard
      .copyWith(fontWeight: FontWeight.w600, fontSize: 24);
  static TextStyle get h2 => h1.copyWith(fontSize: 17);
  static TextStyle get title1 =>
      circularStandard.copyWith(fontWeight: FontWeight.bold, fontSize: 15);
  static TextStyle get title2 => title1.copyWith(fontWeight: FontWeight.normal);
  static TextStyle get body1 =>
      circularStandard.copyWith(fontWeight: FontWeight.normal, fontSize: 13);
  static TextStyle get body2 =>
      body1.copyWith(fontSize: 12, color: Colors.grey);
  static TextStyle get caption =>
      circularStandard.copyWith(fontWeight: FontWeight.w500, fontSize: 11);

  //With Opacity
  static TextStyle get h1HighOpacity => TextStyles.h1
      .copyWith(color: Colors.white.withOpacity(TextOpacity.highEmphasis));
  static TextStyle get h1LowOpacity => TextStyles.h1
      .copyWith(color: Colors.white.withOpacity(TextOpacity.lowEmphasis));
  static TextStyle get title1MediumOpacity => TextStyles.title1
      .copyWith(color: Colors.white.withOpacity(TextOpacity.mediumEmphasis));
  static TextStyle get title2LowOpacity => TextStyles.title2
      .copyWith(color: Colors.white.withOpacity(TextOpacity.lowEmphasis));
}
