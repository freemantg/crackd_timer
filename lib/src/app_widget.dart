import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import 'application/blocs.dart';
import 'application/cubits.dart';
import 'shared/app_themes.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final taskWatcherBloc = ref.watch(taskWatcherBlocProvider)
      ..add(const TaskWatcherEvent.watchAllStarted());
    final timerBloc = ref.watch(timerBlocProvider);
    final settingsBloc = ref.watch(settingsBlocProvider);
    final alarmCubit = ref.watch(alarmCubitProvider);
    final taskCubit = ref.watch(taskCubitProvider);
    final taskActorBloc = ref.watch(taskActorBlocProvider);
    final themeCubit = ref.watch(themeCubitProvider);
    final emojisBloc = ref.watch(emojisBlocProvider);

    return MultiBlocProvider(
      providers: [
        //BLOCS
        BlocProvider.value(value: taskWatcherBloc),
        BlocProvider.value(value: timerBloc),
        BlocProvider.value(value: settingsBloc),
        BlocProvider.value(value: taskActorBloc),
        BlocProvider.value(value: emojisBloc),

        //CUBITS
        BlocProvider.value(value: themeCubit),
        BlocProvider.value(value: taskCubit),
        BlocProvider.value(value: alarmCubit),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SettingsBloc, SettingsState>(
            listener: (context, state) {
              _updateDurationActor(timerBloc, state);
            },
          ),
          BlocListener<TimerBloc, TimerState>(
            listener: (context, state) {
              if (state.status == TimerStatus.running &&
                  alarmCubit.state.tickingSound) {
                alarmCubit.playTickSound();
              } else if (state.status == TimerStatus.completed) {
                _updateTimerType(timerBloc);
                alarmCubit.playAlarm();

                if (state.timerType == TimerType.focus) {
                  taskActorBloc
                      .add(TaskActorEvent.incrementPomodoro(taskCubit.state));
                }
              }
            },
          ),
        ],
        child: BlocBuilder<ThemeCubit, AppTheme>(
          builder: (context, appTheme) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              theme: appTheme.themeData,
            );
          },
        ),
      ),
    );
  }

  void _updateTimerType(TimerBloc timerBloc) {
    final timerCompletedCount = timerBloc.state.timerCompletedCounter;

    timerBloc.add(
      TimerEvent.updateTimer(
        timerType: (timerCompletedCount + 1) % 2 == 0
            ? (timerCompletedCount + 1) % 8 == 0
                ? TimerType.longBreak
                : TimerType.shortBreak
            : TimerType.focus,
      ),
    );
  }

  void _updateDurationActor(TimerBloc timerBloc, SettingsState settingsState) {
    int duration;

    switch (timerBloc.state.timerType) {
      case TimerType.focus:
        duration = settingsState.focusTime;
        break;
      case TimerType.shortBreak:
        duration = settingsState.shortBreakTime;
        break;
      case TimerType.longBreak:
        duration = settingsState.longBreakTime;
        break;
    }

    timerBloc.add(TimerEvent.updateTimer(duration: duration));
  }
}
