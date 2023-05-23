import 'package:audioplayers/audioplayers.dart';
import 'package:riverpod/riverpod.dart';

import 'src/application/blocs.dart';
import 'src/application/cubits.dart';
import 'src/infrastructure/core/sembast_database.dart';
import 'src/infrastructure/core/task_repository.dart';
import 'src/infrastructure/core/tasks_local_service.dart';
import 'src/infrastructure/emojis/emoji_repository.dart';
import 'src/infrastructure/timer/audio_repository.dart';
import 'src/infrastructure/timer/ticker.dart';
import 'src/shared/app_router.dart';

// final getIt = GetIt.instance;

// Future<void> init() async {
//   //Blocs
//   getIt.registerFactory(() => TaskWatcherBloc(getIt()));
//   getIt.registerFactory(() => TaskFormBloc(getIt()));
//   getIt.registerFactory(() => TaskActorBloc(getIt()));
//   getIt.registerFactory(
//       () => TimerBloc(ticker: getIt(), audioRepository: getIt()));
//   getIt.registerFactory(() => SettingsBloc());
//   getIt.registerFactory(() => EmojisBloc(getIt()));

//   //Cubits
//   getIt.registerFactory(() => TaskCubit(getIt()));
//   getIt.registerFactory(() => ThemeCubit());
//   getIt.registerFactory(() => AlarmCubit(getIt()));

//   //Router
//   getIt.registerLazySingleton(() => AppRouter());

//   //Bloc Dependencies
//   getIt.registerLazySingleton(() => TaskRepository(getIt()));
//   getIt.registerLazySingleton(() => EmojiRepository());
//   getIt.registerLazySingleton(() => AudioRepository(getIt()));

//   getIt.registerLazySingleton(() => const Ticker());
//   getIt.registerLazySingleton(() => AudioPlayer());

//   //Data
//   getIt.registerLazySingleton(() => TasksLocalSource(getIt()));
//   getIt.registerLazySingleton(() => SembastDatabase());
// }

//Blocs
final taskWatcherBlocProvider = Provider<TaskWatcherBloc>(
    (ref) => TaskWatcherBloc(ref.read(taskRepositoryProvider)));
final taskFormBlocProvider = Provider<TaskFormBloc>(
    (ref) => TaskFormBloc(ref.read(taskRepositoryProvider)));
final taskActorBlocProvider = Provider<TaskActorBloc>(
    (ref) => TaskActorBloc(ref.read(taskRepositoryProvider)));
final timerBlocProvider = Provider<TimerBloc>((ref) => TimerBloc(
    ticker: ref.read(tickerProvider),
    audioRepository: ref.read(audioRepositoryProvider)));
final settingsBlocProvider = Provider<SettingsBloc>((ref) => SettingsBloc());
final emojisBlocProvider = Provider<EmojisBloc>(
    (ref) => EmojisBloc(ref.read(emojiRepositoryProvider)));

//Cubits
final taskCubitProvider =
    Provider<TaskCubit>((ref) => TaskCubit(ref.read(taskRepositoryProvider)));
final themeCubitProvider = Provider<ThemeCubit>((ref) => ThemeCubit());
final alarmCubitProvider = Provider<AlarmCubit>(
    (ref) => AlarmCubit(ref.read(audioRepositoryProvider)));

//Router
final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());

//Bloc Dependencies
final taskRepositoryProvider = Provider<TaskRepository>(
    (ref) => TaskRepository(ref.read(tasksLocalSourceProvider)));
final emojiRepositoryProvider =
    Provider<EmojiRepository>((ref) => EmojiRepository());
final audioRepositoryProvider = Provider<AudioRepository>(
    (ref) => AudioRepository(ref.read(audioPlayerProvider)));

final tickerProvider = Provider<Ticker>((ref) => const Ticker());
final audioPlayerProvider = Provider<AudioPlayer>((ref) => AudioPlayer());

//Data
final tasksLocalSourceProvider = Provider<TasksLocalSource>(
    (ref) => TasksLocalSource(ref.read(sembastDatabaseProvider)));
final sembastDatabaseProvider =
    Provider<SembastDatabase>((ref) => SembastDatabase());
