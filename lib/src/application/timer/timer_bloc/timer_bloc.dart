import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/application/settings/constants.dart';
import 'package:robot_timer/src/infrastructure/timer/audio_repository.dart';
import 'package:robot_timer/src/infrastructure/timer/ticker.dart';

import '../../settings/constants.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker, required AudioRepository audioRepository})
      : _ticker = ticker,
        super(TimerState.initial()) {
    on<TimerEvent>((event, emit) {
      event.map(
        started: started,
        paused: paused,
        resumed: resumed,
        skipped: skipped,
        reset: reset,
        ticked: ticked,
        updateTimer: updateTimer,
      );
    });
    on<TimerEvent>(_onStart);
    on<TimerEvent>(_onTick);
    on<TimerEvent>(_onPause);
    on<TimerEvent>(_onResume);
    on<TimerEvent>(_onReset);
    on<TimerEvent>(_onUpdate);
    on<TimerEvent>(_onSkip);
  }

  void _onStart(Started, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: event.duration).listen(
          (duration) => add(TimerEvent.ticked(duration: duration)),
        );
  }

  void _onTick(TimerTicked event, Emitter<TimerState> emit) {
    event.duration > 0
        ? emit(state.copyWith(
            status: TimerStatus.running,
            duration: event.duration,
          ))
        : emit(state.copyWith(
            status: TimerStatus.completed,
            timerCompletedCounter: state.timerCompletedCounter + 1,
          ));
  }

  void _onPause(TimerPaused event, Emitter<TimerState> emit) {
    if (state.status == TimerStatus.running) {
      _tickerSubscription?.pause();
      emit(state.copyWith(status: TimerStatus.paused));
    }
  }

  void _onResume(TimerResumed event, Emitter<TimerState> emit) {
    if (state.status == TimerStatus.paused) {
      _tickerSubscription?.resume();
      emit(state.copyWith(status: TimerStatus.running));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(TimerState(
      status: TimerStatus.initial,
      duration: event.duration * 60,
      timerType: state.timerType,
      timerCompletedCounter: state.timerCompletedCounter,
    ));
  }

  void _onUpdate(TimerUpdate event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(TimerState(
      status: TimerStatus.initial,
      duration: (event.duration ?? state.duration) * 60,
      timerType: event.timerType ?? state.timerType,
      timerCompletedCounter: state.timerCompletedCounter,
    ));
  }

  void _onSkip(TimerSkipped event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(state.copyWith(
      status: TimerStatus.completed,
      timerCompletedCounter: state.timerCompletedCounter + 1,
    ));
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
