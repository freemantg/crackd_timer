part of 'timer_bloc.dart';

enum TimerType {
  focus,
  shortBreak,
  longBreak,
}

enum TimerStatus {
  initial,
  running,
  paused,
  completed,
}

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    required TimerStatus status,
    required int duration,
    required int timerCompletedCounter,
    required TimerType timerType,
  }) = _TimerState;

  factory TimerState.initial() => const TimerState(
        status: TimerStatus.initial,
        duration: DefaultSettings.focusTime * 60,
        timerType: TimerType.focus,
        timerCompletedCounter: 0,
      );
}
