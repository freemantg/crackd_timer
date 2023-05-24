import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static const String futuraPT = 'FuturaPT';
}

class TextStyles {
  static const TextStyle roboto = TextStyle();

  // Light-themed text styles
  static const TextStyle h1 = TextStyle(
    fontFamily: Fonts.futuraPT,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 1,
  );

  static final TextStyle h2 = h1.copyWith(fontSize: 17);

  static final TextStyle title1 = roboto.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  static final TextStyle title2 = title1.copyWith(
    fontWeight: FontWeight.normal,
  );

  static final TextStyle body1 = roboto.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: 13,
  );

  static final TextStyle body2 = body1.copyWith(fontSize: 12);

  static final TextStyle caption = roboto.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: Colors.white,
  );

  // Dark-themed text styles
  static final TextStyle h1Dark = h1.copyWith(color: const Color(0xFF1E1E1E));

  static final TextStyle h2Dark = h2.copyWith(color: const Color(0xFF1E1E1E));

  static final TextStyle title1Dark =
      title1.copyWith(color: const Color(0xFF1E1E1E));

  static final TextStyle title2Dark =
      title2.copyWith(color: const Color(0xFF1E1E1E));

  static final TextStyle body1Dark =
      body1.copyWith(color: const Color(0xFF1E1E1E));

  static final TextStyle captionDark =
      caption.copyWith(color: Colors.grey[600]);
}
