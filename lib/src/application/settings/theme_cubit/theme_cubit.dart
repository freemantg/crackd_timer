import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/app_themes.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit()
      : super(
          AppTheme.fromType(
            themeType: ThemeType.CrackdYellow,
            isDark: false,
          ),
        );

  void updateTheme(ThemeType themeType) {
    if (themeType != state.themeType) {
      emit(AppTheme.fromType(themeType: themeType, isDark: state.isDark));
    }
    return;
  }

  void toggleDarkMode() {
    emit(state.copyWith(isDark: !state.isDark));
  }
}
