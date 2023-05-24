import 'package:crackd_timer/src/application/cubits.dart';
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
}
