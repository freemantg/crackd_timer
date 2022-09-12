import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/application/settings/constants.dart';
import 'package:robot_timer/src/infrastructure/timer/ticker.dart';

import '../../../domain/tasks/task.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.initial()) {
    on<TimerEvent>(
      (event, emit) {
        event.map(
          started: (event) {
            print('STARTED');
            _tickerSubscription?.cancel();
            _tickerSubscription = _ticker.tick(ticks: event.duration).listen(
                  (duration) => add(TimerEvent.ticked(duration: duration)),
                );
          },
          ticked: (event) {
            print('TICKED');
            emit(
              event.duration > 0
                  ? TimerState.running(
                      duration: event.duration,
                      timerType: state.timerType,
                    )
                  : TimerState.complete(
                      duration: state.duration,
                      timerType: state.timerType,
                    ),
            );
          },
          paused: (_) {
            print('PAUSED');
            if (state is _TimerRunning) {
              _tickerSubscription?.pause();
              emit(
                TimerState.paused(
                  duration: state.duration,
                  timerType: state.timerType,
                ),
              );
            }
          },
          resumed: (_) {
            print('RESUMED');
            if (state is _TimerPaused) {
              _tickerSubscription?.resume();
              emit(
                TimerState.running(
                  duration: state.duration,
                  timerType: state.timerType,
                ),
              );
            }
          },
          reset: (event) {
            _tickerSubscription?.cancel();
            emit(
              TimerState.initial(
                duration: event.duration * 60,
                timerType: state.timerType,
              ),
            );
          },
          updateDuration: (event) {
            print('UPDATE DURATION');
            print(event.duration);
            _tickerSubscription?.cancel();
            emit(TimerState.initial(
              duration: event.duration * 60,
              timerType: state.timerType,
            ));
            print(state);
          },
          updateTimerType: (_) {
            _tickerSubscription?.cancel();
            emit(TimerState.initial(
              timerType: TimerType.shortBreak,
              duration: state.duration,
            ));
          },
     
        );
      },
    );
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
