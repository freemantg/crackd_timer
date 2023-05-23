import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/timer/audio_repository.dart';

part 'alarm_cubit_state.dart';
part 'alarm_cubit.freezed.dart';

class AlarmCubit extends Cubit<AlarmState> {
  final AudioRepository _audioRepository;

  AlarmCubit(AudioRepository audioRepository)
      : _audioRepository = audioRepository,
        super(AlarmState.initial());

  void updateAlarmSound(AlarmSound alarmSound) =>
      emit(state.copyWith(alarmSound: alarmSound));

  void toggleTickingSound() =>
      emit(state.copyWith(tickingSound: !state.tickingSound));

  void playTickSound() async => await _audioRepository.play('tick.wav');

  void playAlarm() async =>
      await _audioRepository.play('${state.alarmSound.name}.wav');
}
