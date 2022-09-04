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
          colorSchemeSeed: const Color(0xFF6A6DB0),
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
        primaryContainer:
            isDark ? _decreaseColorSaturation(colorSchemeSeed, 0.1) : null,
        seedColor: colorSchemeSeed,
        background: isDark ? null : colorSchemeSeed,
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
    );
    return t.copyWith(
      cardColor: isDark ? Colors.grey[850] : const Color(0xFFF3F6FB),
      disabledColor: Colors.grey.shade300,
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
