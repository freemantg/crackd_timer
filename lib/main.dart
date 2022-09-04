import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:robot_timer/src/shared/app_router.gr.dart';

import 'src/app_widget.dart';
import 'src/application/settings/theme_cubit/theme_cubit.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppRouter(),
      child: BlocProvider<ThemeCubit>(
        create: (context) => ThemeCubit(),
        child: const AppWidget(),
      ),
    ),
  );
}
