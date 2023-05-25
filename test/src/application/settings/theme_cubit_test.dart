import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/cubits.dart';
import 'package:crackd_timer/src/shared/app_themes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'ThemeCubit',
    () {
      late ThemeCubit themeCubit;
      setUp(() {
        themeCubit = ThemeCubit();
      });

      tearDown(() => themeCubit.close());

      test(
        'initial state should be AppTheme.crackdYellow',
        () {
          expect(
            themeCubit.state,
            AppTheme.fromType(themeType: ThemeType.CrackdYellow, isDark: false),
          );
        },
      );

      group(
        'updateTheme',
        () {
          blocTest(
            'emits state with updated theme when called with different theme',
            build: () => themeCubit,
            act: (cubit) => cubit.updateTheme(ThemeType.SeafoamGreen),
            expect: () => [
              AppTheme.fromType(
                  themeType: ThemeType.SeafoamGreen, isDark: false),
            ],
          );
        },
      );

      group(
        'toggleDarkMode',
        () {
          blocTest(
            'emits state with updated dark mode when toggleDarkMode is triggered',
            build: () => themeCubit,
            act: (cubit) => cubit.toggleDarkMode(),
            expect: () => [
              AppTheme.fromType(
                  themeType: ThemeType.CrackdYellow, isDark: true),
            ],
          );

          blocTest<ThemeCubit, AppTheme>(
            'emits state with toggled dark mode when called multiple times',
            build: () => themeCubit,
            act: (cubit) {
              cubit.toggleDarkMode();
              cubit.toggleDarkMode();
              cubit.toggleDarkMode();
            },
            expect: () => [
              AppTheme.fromType(
                  themeType: ThemeType.CrackdYellow, isDark: true),
              AppTheme.fromType(
                  themeType: ThemeType.CrackdYellow, isDark: false),
              AppTheme.fromType(
                  themeType: ThemeType.CrackdYellow, isDark: true),
            ],
          );
        },
      );
    },
  );
}
