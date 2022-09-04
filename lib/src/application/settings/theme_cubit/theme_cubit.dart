import 'package:bloc/bloc.dart';
import 'package:robot_timer/src/shared/app_themes.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit()
      : super(
          AppTheme.fromType(
            themeType: ThemeType.PurplePomodoro,
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
