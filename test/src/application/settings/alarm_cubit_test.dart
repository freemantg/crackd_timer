import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/cubits.dart';
import 'package:crackd_timer/src/domain/audio/audio_playback_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:crackd_timer/src/infrastructure/timer/audio_repository.dart';

class MockAudioRepository extends Mock implements AudioRepository {}

void main() {
  late AlarmCubit alarmCubit;
  late MockAudioRepository mockAudioRepository;

  setUp(() {
    mockAudioRepository = MockAudioRepository();
    alarmCubit = AlarmCubit(mockAudioRepository);
  });

  tearDown(() {
    alarmCubit.close();
  });

  test('initial state should be AlarmState.initial', () {
    expect(alarmCubit.state, AlarmState.initial());
  });

  blocTest<AlarmCubit, AlarmState>(
    'updateAlarmSound should emit updated state with new AlarmSound',
    build: () => alarmCubit,
    act: (cubit) => cubit.updateAlarmSound(AlarmSound.bird),
    expect: () => [AlarmState.initial().copyWith(alarmSound: AlarmSound.bird)],
  );

  blocTest<AlarmCubit, AlarmState>(
    'toggleTickingSound should invert tickingSound state',
    build: () => alarmCubit,
    act: (cubit) => cubit.toggleTickingSound(),
    expect: () => [AlarmState.initial().copyWith(tickingSound: false)],
  );

  blocTest<AlarmCubit, AlarmState>(
    'playTickSound should handle audio repository playback',
    build: () {
      when(() => mockAudioRepository.play(any()))
          .thenAnswer((_) async => right(unit));
      return alarmCubit;
    },
    act: (cubit) => cubit.playTickSound(),
    expect: () => [AlarmState.initial().copyWith(failure: null)],
  );

  blocTest<AlarmCubit, AlarmState>(
    'playTickSound should handle audio repository playback failure',
    build: () {
      when(() => mockAudioRepository.play(any()))
          .thenAnswer((_) async => left(const AudioPlaybackFailure.unknown()));
      return alarmCubit;
    },
    act: (cubit) => cubit.playTickSound(),
    expect: () => [
      AlarmState.initial()
          .copyWith(failure: const AudioPlaybackFailure.unknown())
    ],
  );

  blocTest<AlarmCubit, AlarmState>(
    'playAlarm should handle audio repository playback',
    build: () {
      when(() => mockAudioRepository.play(any()))
          .thenAnswer((_) async => right(unit));
      return alarmCubit;
    },
    act: (cubit) => cubit.playAlarm(),
    expect: () => [AlarmState.initial().copyWith(failure: null)],
  );

  blocTest<AlarmCubit, AlarmState>(
    'playAlarm should handle audio repository playback failure',
    build: () {
      when(() => mockAudioRepository.play(any()))
          .thenAnswer((_) async => left(const AudioPlaybackFailure.unknown()));
      return alarmCubit;
    },
    act: (cubit) => cubit.playAlarm(),
    expect: () => [
      AlarmState.initial()
          .copyWith(failure: const AudioPlaybackFailure.unknown())
    ],
  );
}
