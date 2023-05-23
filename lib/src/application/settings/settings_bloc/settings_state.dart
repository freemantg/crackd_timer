part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required int focusTime,
    required int shortBreakTime,
    required int longBreakTime,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        focusTime: DefaultSettings.focusTime,
        shortBreakTime: DefaultSettings.shortBreak,
        longBreakTime: DefaultSettings.longBreak,
      );
}
