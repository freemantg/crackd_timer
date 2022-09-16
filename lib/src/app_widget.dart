import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_timer/injection_container.dart';

import 'application/blocs.dart';
import 'application/cubits.dart';
import 'shared/app_router.gr.dart';
import 'shared/app_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //BLOCS
        BlocProvider(
          create: (context) => getIt<TaskWatcherBloc>()
            ..add(const TaskWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (_) => getIt<SettingsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TimerBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TaskActorBloc>(),
        ),

        //CUBITS
        BlocProvider(
          create: (_) => getIt<ThemeCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<TaskCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<AlarmCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SettingsBloc, SettingsState>(
              listenWhen: (previous, current) => previous != current,
              listener: (context, state) => _updateDurationActor(context)),
          BlocListener<TimerBloc, TimerState>(
              listenWhen: (previous, current) =>
                  previous.timerType != current.timerType,
              listener: (context, state) => _updateDurationActor(context)),
          BlocListener<TimerBloc, TimerState>(
            listenWhen: (previous, current) =>
                previous.status == TimerStatus.running,
            listener: (context, state) {
              final alarmCubit = context.read<AlarmCubit>();
              if (!alarmCubit.state.tickingSound) return;
              alarmCubit.playTickSound();
            },
          ),
          BlocListener<TimerBloc, TimerState>(
            listenWhen: (previous, current) =>
                current.status == TimerStatus.completed,
            listener: (context, state) {
              _updateTimerType(context);
              context.read<AlarmCubit>().playAlarm();
            },
          ),
          BlocListener<TimerBloc, TimerState>(
            listenWhen: (previous, current) =>
                current.status == TimerStatus.completed &&
                current.timerType == TimerType.focus,
            listener: (context, state) {
              final task = context.read<TaskCubit>().state;
              context
                  .read<TaskActorBloc>()
                  .add(TaskActorEvent.incrementPomodoro(task));
            },
          ),
        ],
        child: BlocBuilder<ThemeCubit, AppTheme>(
          builder: (context, appTheme) {
            return MaterialApp.router(
              routerDelegate: getIt<AppRouter>().delegate(),
              routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
              theme: appTheme.themeData,
            );
          },
        ),
      ),
    );
  }

  void _updateTimerType(BuildContext context) {
    final timerBloc = context.read<TimerBloc>();
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

  void _updateDurationActor(BuildContext context) {
    final timerBloc = context.read<TimerBloc>();
    final settingsBloc = context.read<SettingsBloc>();

    switch (timerBloc.state.timerType) {
      case TimerType.focus:
        return timerBloc.add(
          TimerEvent.updateTimer(
            duration: settingsBloc.state.focusTime,
          ),
        );

      case TimerType.shortBreak:
        return timerBloc.add(
          TimerEvent.updateTimer(
            duration: settingsBloc.state.shortBreakTime,
          ),
        );

      case TimerType.longBreak:
        return timerBloc.add(
          TimerEvent.updateTimer(
            duration: settingsBloc.state.longBreakTime,
          ),
        );
    }
  }
}
