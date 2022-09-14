part of 'alarm_cubit.dart';

enum AlarmSound { digital, bird, space }

@freezed
class AlarmState with _$AlarmState {
  const factory AlarmState({
    required AlarmSound alarmSound,
    required bool tickingSound,
  }) = _AlarmCubitState;

  factory AlarmState.initial() => const AlarmState(
        alarmSound: AlarmSound.digital,
        tickingSound: true,
      );
}
