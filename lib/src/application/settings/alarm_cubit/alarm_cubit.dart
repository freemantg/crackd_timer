import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/audio/audio_playback_failure.dart';
import '../../../infrastructure/timer/audio_repository.dart';

part 'alarm_state.dart';
part 'alarm_cubit.freezed.dart';

class AlarmCubit extends Cubit<AlarmState> {
  final AudioRepository _audioRepository;

  AlarmCubit(AudioRepository audioRepository)
      : _audioRepository = audioRepository,
        super(AlarmState.initial());

  /// Update the alarm sound.
  void updateAlarmSound(AlarmSound alarmSound) {
    emit(state.copyWith(alarmSound: alarmSound));
  }

  /// Toggle whether the tick sound is playing.
  void toggleTickingSound() {
    emit(state.copyWith(tickingSound: !state.tickingSound));
  }

  /// Play the ticking sound.
  void playTickSound() async {
    var result = await _audioRepository.play('tick.wav');
    result.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (_) => emit(state.copyWith(failure: null)),
    );
  }

  /// Play the alarm sound.
  void playAlarm() async {
    var result = await _audioRepository.play('${state.alarmSound.name}.wav');
    result.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (_) => emit(state.copyWith(failure: null)),
    );
  }
}
