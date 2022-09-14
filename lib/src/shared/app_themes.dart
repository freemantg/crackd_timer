import 'package:flutter/material.dart';
import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_themes.freezed.dart';

enum ThemeType { PurplePomodoro, SeafoamGreen, CornflowerBlue }

@freezed
class AppTheme with _$AppTheme {
  AppTheme._();

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
      case ThemeType.PurplePomodoro:
        return AppTheme(
          isDark: isDark,
          themeType: themeType,
          colorSchemeSeed: const Color(0xFF261D3A),
        );

      case ThemeType.SeafoamGreen:
        return AppTheme(
          isDark: isDark,
          themeType: themeType,
          colorSchemeSeed: const Color(0xFF00D0A5),
        );
      case ThemeType.CornflowerBlue:
        return AppTheme(
          isDark: isDark,
          themeType: themeType,
          colorSchemeSeed: const Color(0xFF6495ED),
        );
    }
  }
  ThemeData get themeData {
    final t = ThemeData.from(
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
      colorScheme: ColorScheme.fromSeed(
        brightness: isDark ? Brightness.dark : Brightness.light,
        seedColor: colorSchemeSeed,
        background: isDark ? null : colorSchemeSeed,
      ),
    );
    return t.copyWith(
      disabledColor: Colors.grey.shade300,
      cardColor: isDark ? Colors.black12 : null,
    );
  }
}

extension ThemeExtension on ThemeType {
  String get themeName {
    final pascalCaseName = RegExp(r"(?:[A-Z]+|^)[a-z]*")
        .allMatches(name)
        .map((e) => e[0])
        .toList();

    return pascalCaseName.join(' ');
  }
}

Color _decreaseColorSaturation(Color color, double decrement) {
  var hslColor = HSLColor.fromColor(color);
  var newValue = min(max(hslColor.saturation - decrement, 0.0), 1.0);
  return hslColor.withSaturation(newValue).toColor();
}
