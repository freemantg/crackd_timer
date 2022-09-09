part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherEvent with _$TaskWatcherEvent {
  const factory TaskWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TaskWatcherEvent.watchUncompletedStarted() =
      _WatchUncompletedStarted;
  const factory TaskWatcherEvent.tasksReceived(
      Either<TaskFailure, List<Task>> failureOrTasks) = _TasksRecieved;
}
