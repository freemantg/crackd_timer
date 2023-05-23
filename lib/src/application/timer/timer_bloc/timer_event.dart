part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started({required int duration}) = Started;
  const factory TimerEvent.paused() = Paused;
  const factory TimerEvent.resumed() = Resumed;
  const factory TimerEvent.skipped() = Skipped;
  const factory TimerEvent.reset({required int duration}) = Reset;
  const factory TimerEvent.ticked({required int duration}) = Ticked;
  const factory TimerEvent.updateTimer({
    int? duration,
    TimerType? timerType,
  }) = _UpdateDuration;
}
