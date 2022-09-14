import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/application/settings/constants.dart';
import 'package:robot_timer/src/infrastructure/timer/audio_repository.dart';
import 'package:robot_timer/src/infrastructure/timer/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker, required AudioRepository audioRepository})
      : _ticker = ticker,
        super(TimerState.initial()) {
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
          ticked: (event) async {
            event.duration > 0
                ? {
                    emit(state.copyWith(
                      status: TimerStatus.running,
                      duration: event.duration,
                    )),
                  }
                : emit(
                    state.copyWith(
                      status: TimerStatus.completed,
                      timerCompletedCounter: state.timerCompletedCounter + 1,
                    ),
                  );
          },
          paused: (_) {
            print('PAUSED');
            if (state.status == TimerStatus.running) {
              _tickerSubscription?.pause();
              emit(state.copyWith(status: TimerStatus.paused));
            }
          },
          resumed: (_) {
            print('RESUMED');
            if (state.status == TimerStatus.paused) {
              _tickerSubscription?.resume();

              emit(state.copyWith(status: TimerStatus.running));
            }
          },
          reset: (event) {
            _tickerSubscription?.cancel();
            emit(
              TimerState(
                status: TimerStatus.initial,
                duration: event.duration * 60,
                timerType: state.timerType,
                timerCompletedCounter: state.timerCompletedCounter,
              ),
            );
          },
          updateTimer: (event) {
            _tickerSubscription?.cancel();
            emit(
              TimerState(
                status: TimerStatus.initial,
                duration: (event.duration ?? state.duration) * 60,
                timerType: event.timerType ?? state.timerType,
                timerCompletedCounter: state.timerCompletedCounter,
              ),
            );
          },
          skipped: (_) {
            _tickerSubscription?.cancel();
            emit(
              state.copyWith(
                status: TimerStatus.completed,
                timerCompletedCounter: state.timerCompletedCounter + 1,
              ),
            );
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
