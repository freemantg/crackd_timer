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

// class TimerState with _$TimerState {
//   const factory TimerState.initial({
//     @Default(DefaultSettings.focusTime * 60) int duration,
//     @Default(TimerType.focus) TimerType timerType,
//     @Default(0) int timerCompletedCount,
//   }) = Initial;
//   const factory TimerState.running({
//     required int duration,
//     required TimerType timerType,
//     required int timerCompletedCount,
//   }) = TimerRunning;
//   const factory TimerState.paused({
//     required int duration,
//     required TimerType timerType,
//     required int timerCompletedCount,
//   }) = TimerPaused;
//   const factory TimerState.complete({
//     required int duration,
//     required TimerType timerType,
//     required int timerCompletedCount,
//   }) = TimerCompleted;
// }

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
