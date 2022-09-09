import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_timer/injection_container.dart';
import 'package:robot_timer/src/application/settings/settings_bloc/settings_bloc.dart';
import 'package:robot_timer/src/application/tasks/task_watcher/task_watcher_bloc.dart';
import 'package:robot_timer/src/application/timer/timer_bloc/timer_bloc.dart';

import 'application/settings/theme_cubit/theme_cubit.dart';
import 'application/tasks/bloc/task_actor_bloc.dart';
import 'shared/app_router.gr.dart';
import 'shared/app_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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

  _updateDurationActor(BuildContext context) {
    final timerBloc = context.read<TimerBloc>();
    final settingsBloc = context.read<SettingsBloc>();

    switch (timerBloc.state.timerType) {
      case TimerType.focus:
        return timerBloc.add(
          TimerEvent.updateDuration(duration: settingsBloc.state.focusTime),
        );

      case TimerType.shortBreak:
        return timerBloc.add(
          TimerEvent.updateDuration(
              duration: settingsBloc.state.shortBreakTime),
        );

      case TimerType.longBreak:
        return timerBloc.add(
          TimerEvent.updateDuration(duration: settingsBloc.state.longBreakTime),
        );
    }
  }
}
