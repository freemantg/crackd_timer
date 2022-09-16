import 'package:flutter/material.dart';
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
          colorSchemeSeed: const Color(0xFFFEE400),
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
        surface: isDark ? const Color(0xFF222328) : const Color(0xFFF9F9F9),
      ),
    );
    return t.copyWith(cardColor: colorSchemeSeed);
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
