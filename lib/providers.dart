import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
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

//Blocs
final taskWatcherBlocProvider = Provider<TaskWatcherBloc>(
    (ref) => TaskWatcherBloc(ref.read(taskRepositoryProvider)));
final taskFormBlocProvider = Provider<TaskFormBloc>(
    (ref) => TaskFormBloc(ref.read(taskRepositoryProvider)));
final taskActorBlocProvider = Provider<TaskActorBloc>(
    (ref) => TaskActorBloc(ref.read(taskRepositoryProvider)));
final timerBlocProvider =
    Provider<TimerBloc>((ref) => TimerBloc(ticker: ref.read(tickerProvider)));
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
final emojiRepositoryProvider = Provider<EmojiRepository>(
    (ref) => EmojiRepository(ref.read(assetBundleProvider)));
final audioRepositoryProvider = Provider<AudioRepository>(
    (ref) => AudioRepository(ref.read(audioPlayerProvider)));

final tickerProvider = Provider<Ticker>((ref) => const Ticker());
final audioPlayerProvider = Provider<AudioPlayer>((ref) => AudioPlayer());
final assetBundleProvider = Provider<AssetBundle>((ref) => rootBundle);

//Data
final tasksLocalSourceProvider = Provider<TasksLocalSource>(
    (ref) => TasksLocalSource(ref.read(sembastDatabaseProvider).database));

final sembastDatabaseProvider = Provider<SembastDatabase>(
    (_) => throw Exception('Database not initialized'));
