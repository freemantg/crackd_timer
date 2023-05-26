import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/timer/ticker.dart';
import '../../settings/constants.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(TimerState.initial()) {
    on<TimerEvent>((event, emit) => _mapEventToState(event, emit));
  }

  void _mapEventToState(TimerEvent event, Emitter<TimerState> emit) {
    event.map(
      started: (event) {
        _cancelTicker();
        _tickerSubscription = _ticker.tick(ticks: event.duration).listen(
              (duration) => add(TimerEvent.ticked(duration: duration)),
            );
      },
      paused: (event) {
        if (state.status == TimerStatus.running) {
          _tickerSubscription?.pause();
          emit(state.copyWith(status: TimerStatus.paused));
        }
      },
      resumed: (event) {
        if (state.status == TimerStatus.paused) {
          _tickerSubscription?.resume();
          emit(state.copyWith(status: TimerStatus.running));
        }
      },
      skipped: (event) => _skipEvent(emit),
      reset: (event) => _resetEvent(event, emit),
      ticked: (event) => _tickEvent(event, emit),
      updateTimer: (event) => _updateEvent(event, emit),
    );
  }

  void _cancelTicker() {
    _tickerSubscription?.cancel();
  }

  void _skipEvent(Emitter<TimerState> emit) {
    _cancelTicker();
    emit(state.copyWith(
      status: TimerStatus.completed,
      timerCompletedCounter: state.timerCompletedCounter + 1,
    ));
  }

  void _resetEvent(Reset event, Emitter<TimerState> emit) {
    _cancelTicker();
    emit(TimerState(
      status: TimerStatus.initial,
      duration: event.duration * 60,
      timerType: state.timerType,
      timerCompletedCounter: state.timerCompletedCounter,
    ));
  }

  void _updateEvent(UpdatedDuration event, Emitter<TimerState> emit) {
    _cancelTicker();
    emit(TimerState(
      status: TimerStatus.initial,
      duration: (event.duration ?? state.duration) * 60,
      timerType: event.timerType ?? state.timerType,
      timerCompletedCounter: state.timerCompletedCounter,
    ));
  }

  void _tickEvent(Ticked event, Emitter<TimerState> emit) {
    event.duration >= 0
        ? emit(state.copyWith(
            status: TimerStatus.running,
            duration: event.duration,
          ))
        : emit(state.copyWith(
            status: TimerStatus.completed,
            timerCompletedCounter: state.timerCompletedCounter + 1,
          ));
  }

  @override
  Future<void> close() {
    _cancelTicker();
    return super.close();
  }
}
