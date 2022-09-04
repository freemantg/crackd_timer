import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/infrastructure/timer/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  static const int _duration = 60;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.initial(duration: 1500)) {
    on<TimerEvent>(
      (event, emit) {
        event.map(
          started: (event) {
            print('STARTED');
            emit(TimerState.initial(duration: event.duration));
            _tickerSubscription?.cancel();
            _tickerSubscription = _ticker.tick(ticks: event.duration).listen(
                  (duration) => add(TimerEvent.ticked(duration: duration)),
                );
          },
          ticked: (event) {
            print('TICKED');
            emit(
              event.duration > 0
                  ? TimerState.running(duration: event.duration)
                  : TimerState.complete(duration: state.duration),
            );
          },
          paused: (event) {
            print('PAUSED');

            if (state is _TimerRunning) {
              _tickerSubscription?.pause();
              emit(TimerState.paused(duration: state.duration));
            }
          },
          resumed: (event) {
            print('RESUMED');
            if (state is _TimerPaused) {
              _tickerSubscription?.resume();
              emit(TimerState.running(duration: state.duration));
            }
          },
          reset: (event) {
            _tickerSubscription?.cancel();
            emit(const TimerState.initial(duration: _duration));
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
