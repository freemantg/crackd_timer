import '../../../application/blocs.dart';

extension TimerTypeX on TimerType {
  String get getTimerName {
    switch (this) {
      case TimerType.focus:
        return 'Pomodoro';
      case TimerType.longBreak:
        return 'Long Break';
      case TimerType.shortBreak:
        return 'Short Break';
      default:
        return 'ERROR LOADING TIMER';
    }
  }

  String get getTimerDescription {
    switch (this) {
      case TimerType.focus:
        return 'Pomodoro time. Stay focused!';
      default:
        return 'Time for a break!';
    }
  }
}
