import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/blocs.dart';
import 'package:crackd_timer/src/application/settings/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'SettingsBloc',
    () {
      late SettingsBloc settingsBloc;
      setUp(() {
        settingsBloc = SettingsBloc();
      });

      tearDown(() {
        settingsBloc.close();
      });

      test(
        'emits initial state',
        () => expect(settingsBloc.state, SettingsState.initial()),
      );

      blocTest<SettingsBloc, SettingsState>(
        'emits state with updated focus time when updateFocusTime event is triggered',
        build: () => settingsBloc,
        act: (bloc) =>
            bloc.add(const SettingsEvent.updateFocusTime(minutes: '30')),
        expect: () => [
          SettingsState.initial().copyWith(focusTime: 30),
        ],
      );

      blocTest<SettingsBloc, SettingsState>(
        'emits state with updated short break time when updateShortBreakTime event is triggered',
        build: () => settingsBloc,
        act: (bloc) =>
            bloc.add(const SettingsEvent.updateShortBreakTime(minutes: '10')),
        expect: () => [
          SettingsState.initial().copyWith(shortBreakTime: 10),
        ],
      );

      blocTest<SettingsBloc, SettingsState>(
        'emits state with updated long break time when updateLongBreakTime event is triggered',
        build: () => settingsBloc,
        act: (bloc) =>
            bloc.add(const SettingsEvent.updateLongBreakTime(minutes: '30')),
        expect: () => [
          SettingsState.initial().copyWith(longBreakTime: 30),
        ],
      );

      blocTest<SettingsBloc, SettingsState>(
        'does not emit state when update event is triggered with the same value',
        build: () => settingsBloc,
        act: (bloc) {
          bloc.add(const SettingsEvent.updateFocusTime(
              minutes: '${DefaultSettings.focusTime}'));
          bloc.add(const SettingsEvent.updateShortBreakTime(
              minutes: '${DefaultSettings.shortBreak}'));
          bloc.add(const SettingsEvent.updateLongBreakTime(
              minutes: '${DefaultSettings.longBreak}'));
        },
        expect: () => [],
      );
    },
  );
}
