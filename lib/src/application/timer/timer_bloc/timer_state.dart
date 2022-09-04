part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial({required int duration}) = _Initial;
  const factory TimerState.running({required int duration}) = _TimerRunning;
  const factory TimerState.paused({required int duration}) = _TimerPaused;
  const factory TimerState.complete({required int duration}) = _TimerCompleted;
}
