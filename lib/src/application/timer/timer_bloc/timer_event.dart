part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started({required int duration}) = _Started;
  const factory TimerEvent.paused() = _Paused;
  const factory TimerEvent.resumed() = _Resumed;
  const factory TimerEvent.reset() = _Reset;
  const factory TimerEvent.ticked({required int duration}) = _Ticked;
}
