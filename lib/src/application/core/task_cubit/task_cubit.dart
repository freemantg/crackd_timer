import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:robot_timer/src/infrastructure/core/task_repository.dart';

import '../../../domain/core/task_failure.dart';
import '../../../domain/tasks/task.dart';

class TaskCubit extends Cubit<Task> {
  final TaskRepository _taskRepository;

  TaskCubit(this._taskRepository) : super(Task.empty());
  StreamSubscription<Either<TaskFailure, Task>>? _taskStreamSubscription;

  void updateTask(Task task) async {
    await _taskStreamSubscription?.cancel();
    _taskStreamSubscription = _taskRepository
        .fetchTask(task)
        .listen((failureOrSuccess) => taskReceived(failureOrSuccess));
  }

  void taskReceived(Either<TaskFailure, Task> failureOrSuccess) {
    emit(failureOrSuccess.fold((l) => Task.empty(), (task) => task));
  }
}
