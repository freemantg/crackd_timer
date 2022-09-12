import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_timer/injection_container.dart';
import 'package:robot_timer/src/application/core/task_cubit/task_cubit.dart';
import 'package:robot_timer/src/application/settings/settings_bloc/settings_bloc.dart';
import 'package:robot_timer/src/application/tasks/task_watcher/task_watcher_bloc.dart';
import 'package:robot_timer/src/application/timer/timer_bloc/timer_bloc.dart';

import 'application/settings/theme_cubit/theme_cubit.dart';
import 'application/tasks/task_actor/task_actor_bloc.dart';
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
          create: (_) => getIt<SettingsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TimerBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TaskWatcherBloc>()
            ..add(const TaskWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<TaskActorBloc>(),
        ),

        //CUBITS
        BlocProvider(
          create: (_) => getIt<TaskCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<ThemeCubit>(),
        )
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
            listenWhen: (previous, current) => current is TimerCompleted,
            listener: (context, state) => _updateTimerType(context),
          ),
          BlocListener<TimerBloc, TimerState>(
            listenWhen: (previous, current) =>
                current is TimerCompleted &&
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

  _updateTimerType(BuildContext context) {
    print('updateTimerType');
    final timerBloc = context.read<TimerBloc>();
    final timerCompletedCount = timerBloc.state.timerCompletedCount;

    timerBloc.add(
      TimerEvent.updateTimer(
        timerType: (timerCompletedCount + 1) % 2 == 0
            ? (timerCompletedCount + 1) % 4 == 0
                ? TimerType.longBreak
                : TimerType.shortBreak
            : TimerType.focus,
      ),
    );
  }

  _updateDurationActor(BuildContext context) {
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
