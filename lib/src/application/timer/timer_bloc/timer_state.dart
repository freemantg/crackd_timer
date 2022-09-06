part of 'timer_bloc.dart';

enum TimerType {
  focus,
  shortBreak,
  longBreak,
}

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial({
    @Default(DefaultSettings.focusTime * 60) int duration,
    @Default(TimerType.focus) TimerType timerType,
  }) = _Initial;
  const factory TimerState.running({
    required int duration,
    required TimerType timerType,
  }) = _TimerRunning;
  const factory TimerState.paused({
    required int duration,
    required TimerType timerType,
  }) = _TimerPaused;
  const factory TimerState.complete({
    required int duration,
    required TimerType timerType,
  }) = _TimerCompleted;
}
