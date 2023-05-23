import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';

import 'src/application/blocs.dart';
import 'src/application/cubits.dart';
import 'src/infrastructure/core/sembast_database.dart';
import 'src/infrastructure/core/task_repository.dart';
import 'src/infrastructure/core/tasks_local_service.dart';
import 'src/infrastructure/emojis/emoji_repository.dart';
import 'src/infrastructure/timer/audio_repository.dart';
import 'src/infrastructure/timer/ticker.dart';
import 'src/shared/app_router.dart';

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
