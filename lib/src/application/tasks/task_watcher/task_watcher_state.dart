part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherState with _$TaskWatcherState {
  const factory TaskWatcherState.initial() = _Initial;
  const factory TaskWatcherState.loadInProgress() = _LoadInProgress;
  const factory TaskWatcherState.loadSuccess({required List<Task> tasks}) = _LoadSuccess;
  const factory TaskWatcherState.loadFailure({required TaskFailure taskFailure}) = _LoadFailure;
}
