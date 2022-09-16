import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_themes.freezed.dart';

enum ThemeType { CrackdYellow, SeafoamGreen, CornflowerBlue }

@freezed
class AppTheme with _$AppTheme {
  AppTheme._();

  //THEME COLORS
  static const crackdYellowColorSeed = Color(0xFFFEE400);
  static const seafoamGreen = Color(0xFF00D0A5);
  static const cornflowerBlue = Color(0xFF6495ED);

  //SURFACE VARIANTS
  static const surfaceColorLight = Color(0xFFF9F9F9);
  static const surfaceColorDark = Color(0xFF222328);

  factory AppTheme({
    required bool isDark,
    required Color colorSchemeSeed,
    required ThemeType themeType,
  }) = _AppTheme;

  factory AppTheme.fromType({
    required ThemeType themeType,
    required bool isDark,
  }) {
    switch (themeType) {
      case ThemeType.CrackdYellow:
        return AppTheme(
          isDark: isDark,
          themeType: themeType,
          colorSchemeSeed: crackdYellowColorSeed,
        );

      case ThemeType.SeafoamGreen:
        return AppTheme(
          isDark: isDark,
          themeType: themeType,
          colorSchemeSeed: seafoamGreen,
        );
      case ThemeType.CornflowerBlue:
        return AppTheme(
          isDark: isDark,
          themeType: themeType,
          colorSchemeSeed: cornflowerBlue,
        );
    }
  }
  ThemeData get themeData {
    final t = ThemeData.from(
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
      colorScheme: ColorScheme.fromSeed(
        brightness: isDark ? Brightness.dark : Brightness.light,
        surface: isDark ? surfaceColorDark : surfaceColorLight,
        seedColor: colorSchemeSeed,
      ),
    );
    return t.copyWith(
      disabledColor: Colors.grey[300],
      cardColor: colorSchemeSeed,
      appBarTheme: isDark
          ? null
          : const AppBarTheme(
              foregroundColor: surfaceColorDark,
            ),
    );
  }
}


