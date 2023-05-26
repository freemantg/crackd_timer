import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/settings/constants.dart';
import 'package:crackd_timer/src/application/timer/timer_bloc/timer_bloc.dart';
import 'package:crackd_timer/src/infrastructure/timer/ticker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'timer_bloc_test.mocks.dart';

@GenerateMocks([Ticker])
void main() {
  group(
    'TimerBloc',
    () {
      late MockTicker mockTicker;
      late TimerBloc timerBloc;
      const defaultDuration = DefaultSettings.focusTime * 60;

      setUp(() {
        mockTicker = MockTicker();
        timerBloc = TimerBloc(ticker: mockTicker);
        when(mockTicker.tick(ticks: anyNamed('ticks'))).thenAnswer(
          (_) => Stream.periodic(const Duration(seconds: 1), (i) => i).take(3),
        );
      });

      tearDown(() {
        timerBloc.close();
      });

      test('initial state is TimerState.initial()', () {
        expect(TimerBloc(ticker: mockTicker).state, TimerState.initial());
      });

      blocTest<TimerBloc, TimerState>(
        'Emits [running] when TimerStarted is added',
        build: () => TimerBloc(ticker: mockTicker),
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: 3));
          // Simulate `tick` events.
          for (var i = 0; i < 3; i++) {
            bloc.add(TimerEvent.ticked(duration: 3 - i));
          }
        },
        expect: () => [
          const TimerState(
            status: TimerStatus.running,
            duration: 3,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.running,
            duration: 2,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.running,
            duration: 1,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
        ],
      );

      blocTest<TimerBloc, TimerState>(
        'emits [paused] when TimerPaused is added',
        build: () => timerBloc,
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: 60));
          bloc.add(const TimerEvent.ticked(
              duration:
                  defaultDuration)); // Ensure the duration is 60 before pausing
          bloc.add(const TimerEvent.paused());
        },
        expect: () => <TimerState>[
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.paused,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
        ],
      );

      blocTest<TimerBloc, TimerState>(
        'emits [running] when TimerResumed is added',
        build: () => timerBloc,
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: defaultDuration));
          bloc.add(const TimerEvent.ticked(duration: defaultDuration));
          bloc.add(const TimerEvent.paused());
          bloc.add(const TimerEvent.resumed());
        },
        expect: () => <TimerState>[
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.paused,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
        ],
      );

      blocTest<TimerBloc, TimerState>(
        'emits [completed] when TimerSkipped is added',
        build: () => timerBloc,
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: defaultDuration));
          bloc.add(const TimerEvent.ticked(duration: defaultDuration));
          bloc.add(const TimerEvent.skipped());
        },
        expect: () => <TimerState>[
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.completed,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 1,
          ),
        ],
      );

      blocTest<TimerBloc, TimerState>(
        'emits [initial] when TimerReset is added',
        build: () => timerBloc,
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: defaultDuration));
          bloc.add(const TimerEvent.ticked(duration: defaultDuration));
          bloc.add(const TimerEvent.reset(duration: defaultDuration));
        },
        expect: () => <TimerState>[
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          TimerState.initial(),
        ],
      );

      blocTest<TimerBloc, TimerState>(
        'emits [completed] when TimerTicked is added with 0 duration',
        build: () => timerBloc,
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: defaultDuration));
          bloc.add(const TimerEvent.ticked(duration: defaultDuration));
          bloc.add(const TimerEvent.ticked(duration: 0));
        },
        expect: () => <TimerState>[
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.completed,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 1,
          ),
        ],
      );

      blocTest<TimerBloc, TimerState>(
        'emits updated TimerState when TimerUpdated is added',
        build: () => timerBloc,
        act: (bloc) {
          bloc.add(const TimerEvent.started(duration: defaultDuration));
          bloc.add(const TimerEvent.ticked(duration: defaultDuration));
          bloc.add(
            const TimerEvent.updateTimer(
              duration: 120,
              timerType: TimerType.shortBreak,
            ),
          );
        },
        expect: () => <TimerState>[
          const TimerState(
            status: TimerStatus.running,
            duration: defaultDuration,
            timerType: TimerType.focus,
            timerCompletedCounter: 0,
          ),
          const TimerState(
            status: TimerStatus.initial,
            duration: 120 * 60,
            timerType: TimerType.shortBreak,
            timerCompletedCounter: 0,
          ),
        ],
      );
    },
  );
}
