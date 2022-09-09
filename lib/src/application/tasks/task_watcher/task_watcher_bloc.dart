import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/infrastructure/core/task_repository.dart';

import '../../../domain/core/task_failure.dart';
import '../../../domain/tasks/task.dart';

part 'task_watcher_event.dart';
part 'task_watcher_state.dart';
part 'task_watcher_bloc.freezed.dart';

class TaskWatcherBloc extends Bloc<TaskWatcherEvent, TaskWatcherState> {
  final TaskRepository _taskRepository;
  StreamSubscription<Either<TaskFailure, List<Task>>>? _taskStreamSubscription;

  TaskWatcherBloc(TaskRepository taskRepository)
      : _taskRepository = taskRepository,
        super(const _Initial()) {
    on<TaskWatcherEvent>(
      (event, emit) {
        event.when(
          watchAllStarted: () async {
            emit(const TaskWatcherState.loadInProgress());
            await _taskStreamSubscription?.cancel();
            _taskStreamSubscription =
                _taskRepository.fetchTasks().listen((tasks) {
              add(TaskWatcherEvent.tasksReceived(tasks));
            });
          },
          watchUncompletedStarted: () {},
          tasksReceived: (event) {
            event.fold(
              (failure) =>
                  emit(TaskWatcherState.loadFailure(taskFailure: failure)),
              (tasks) => emit(TaskWatcherState.loadSuccess(tasks: tasks)),
            );
          },
        );
      },
    );
  }
  @override
  Future<void> close() {
    _taskStreamSubscription?.cancel();
    return super.close();
  }
}
