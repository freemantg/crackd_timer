part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateFocusTime({required String minutes}) =
      _UpdateFocusTime;
  const factory SettingsEvent.updateShortBreakTime({required String minutes}) =
      _UpdateShortBreakTime;
  const factory SettingsEvent.updateLongBreakTime({required String minutes}) =
      _UpdateLongBreakTime;
  const factory SettingsEvent.saved() = _Saved;
}
