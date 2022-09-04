import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/application/settings/constants.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial()) {
    on<SettingsEvent>(
      (event, emit) {
        event.map(
          updateFocusTime: (event) {
            final minutes = int.tryParse(event.minutes) ?? 0;
            if (state.focusTime != minutes) {
              emit(state.copyWith(focusTime: minutes));
            } else {
              return;
            }
          },
          updateShortBreakTime: (event) {
            final minutes = int.tryParse(event.minutes) ?? 0;
            if (state.shortBreakTime != minutes) {
              emit(state.copyWith(shortBreakTime: minutes));
            } else {
              return;
            }
          },
          updateLongBreakTime: (event) {
            final minutes = int.tryParse(event.minutes) ?? 0;
            if (state.longBreakTime != minutes) {
              emit(state.copyWith(longBreakTime: minutes));
            } else {
              return;
            }
          },
          saved: (_) {},
        );
      },
    );
  }
}
