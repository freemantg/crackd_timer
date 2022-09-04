import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:robot_timer/src/application/settings/settings_bloc/settings_bloc.dart';
import 'package:robot_timer/src/application/timer/timer_bloc/timer_bloc.dart';

import 'application/settings/theme_cubit/theme_cubit.dart';
import 'infrastructure/timer/ticker.dart';
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
          create: (_) => SettingsBloc(),
        ),
        BlocProvider(
          create: (_) => TimerBloc(ticker: const Ticker()),
        )
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, appTheme) {
          return MaterialApp.router(
            routerDelegate: Provider.of<AppRouter>(context).delegate(),
            routeInformationParser:
                Provider.of<AppRouter>(context).defaultRouteParser(),
            theme: appTheme.themeData,
          );
        },
      ),
    );
  }
}
