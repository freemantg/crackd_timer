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

    return MultiBlocProvider(
      providers: [
        //BLOCS
        BlocProvider(
          create: (context) => ref.watch(taskWatcherBlocProvider)
            ..add(const TaskWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (_) => ref.watch(settingsBlocProvider),
        ),
        BlocProvider(
          create: (context) => ref.watch(timerBlocProvider),
        ),
        BlocProvider(
          create: (context) => ref.watch(taskActorBlocProvider),
        ),

        //CUBITS
        BlocProvider(
          create: (_) => ref.watch(themeCubitProvider),
        ),
        BlocProvider(
          create: (_) => ref.watch(taskCubitProvider),
        ),
        BlocProvider(
          create: (_) => ref.watch(alarmCubitProvider),
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
