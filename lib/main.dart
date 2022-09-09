import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;

import 'src/app_widget.dart';
import 'src/application/settings/theme_cubit/theme_cubit.dart';
import 'src/infrastructure/core/sembast_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  await di.getIt<SembastDatabase>().init();

  runApp(
    BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: const AppWidget(),
    ),
  );
}
