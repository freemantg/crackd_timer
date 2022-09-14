part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherEvent with _$TaskWatcherEvent {
  const factory TaskWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TaskWatcherEvent.watchCompletedStarted() =
      _WatchCompletedStarted;
  const factory TaskWatcherEvent.watchActiveStarted() =
      _WatchActiveStarted;
  const factory TaskWatcherEvent.tasksReceived(
      Either<TaskFailure, List<Task>> failureOrTasks) = _TasksRecieved;
}
