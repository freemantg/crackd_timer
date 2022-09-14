import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';
import 'package:robot_timer/src/application/add_task/emojis/emojis_bloc.dart';
import 'package:robot_timer/src/application/core/task_cubit/task_cubit.dart';
import 'package:robot_timer/src/application/settings/alarm_cubit/alarm_cubit.dart';
import 'package:robot_timer/src/application/settings/theme_cubit/theme_cubit.dart';
import 'package:robot_timer/src/application/tasks/task_form/bloc/task_form_bloc.dart';
import 'package:robot_timer/src/application/tasks/task_watcher/task_watcher_bloc.dart';
import 'package:robot_timer/src/application/timer/timer_bloc/timer_bloc.dart';
import 'package:robot_timer/src/infrastructure/core/task_repository.dart';
import 'package:robot_timer/src/infrastructure/core/tasks_local_service.dart';
import 'package:robot_timer/src/infrastructure/emojis/emoji_repository.dart';
import 'package:robot_timer/src/infrastructure/timer/audio_repository.dart';
import 'package:robot_timer/src/shared/app_router.gr.dart';

import 'src/application/settings/settings_bloc/settings_bloc.dart';
import 'src/application/tasks/task_actor/task_actor_bloc.dart';
import 'src/infrastructure/core/sembast_database.dart';
import 'src/infrastructure/timer/ticker.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //Blocs
  getIt.registerFactory(() => TaskWatcherBloc(getIt()));
  getIt.registerFactory(() => TaskFormBloc(getIt()));
  getIt.registerFactory(() => TaskActorBloc(getIt()));
  getIt.registerFactory(
      () => TimerBloc(ticker: getIt(), audioRepository: getIt()));
  getIt.registerFactory(() => SettingsBloc());
  getIt.registerFactory(() => EmojisBloc(getIt()));

  //Cubits
  getIt.registerFactory(() => TaskCubit(getIt()));
  getIt.registerFactory(() => ThemeCubit());
  getIt.registerFactory(() => AlarmCubit(getIt()));

  //Router
  getIt.registerLazySingleton(() => AppRouter());

  //Bloc Dependencies
  getIt.registerLazySingleton(() => TaskRepository(getIt()));
  getIt.registerLazySingleton(() => EmojiRepository());
  getIt.registerLazySingleton(() => AudioRepository(getIt()));

  getIt.registerLazySingleton(() => const Ticker());
  getIt.registerLazySingleton(() => AudioPlayer());

  //Data
  getIt.registerLazySingleton(() => TasksLocalSource(getIt()));
  getIt.registerLazySingleton(() => SembastDatabase());
}
