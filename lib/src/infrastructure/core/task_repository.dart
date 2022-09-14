import 'package:robot_timer/src/domain/core/task_failure.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:robot_timer/src/domain/core/tasks_interface.dart';
import 'package:robot_timer/src/infrastructure/core/tasks_local_service.dart';
import 'package:robot_timer/src/infrastructure/tasks/tasks_dto.dart';

import '../../domain/tasks/task.dart';

class TaskRepository implements TasksInterface {
  final TasksLocalSource _localSource;

  TaskRepository(this._localSource);

  @override
  Stream<Either<TaskFailure, List<Task>>> fetchTasks() async* {
    final taskDtoStream = _localSource.getAllTasksStream();
    yield* taskDtoStream.map(
      (taskDtos) => right<TaskFailure, List<Task>>(
        taskDtos.map((taskDto) => taskDto.toDomain()).toList(),
      ),
    );
  }

  @override
  Stream<Either<TaskFailure, List<Task>>> fetchActiveTasks() async* {
    final taskDtoStream = _localSource.getActiveTasksStream();
    yield* taskDtoStream.map(
      (taskDtos) => right<TaskFailure, List<Task>>(
        taskDtos.map((taskDto) => taskDto.toDomain()).toList(),
      ),
    );
  }

  @override
  Stream<Either<TaskFailure, List<Task>>> fetchCompletedTasks() async* {
    final taskDtoStream = _localSource.getCompletedTasksStream();
    yield* taskDtoStream.map(
      (taskDtos) => right<TaskFailure, List<Task>>(
        taskDtos.map((taskDto) => taskDto.toDomain()).toList(),
      ),
    );
  }

  @override
  Future<Either<TaskFailure, Unit>> create(Task task) async {
    try {
      await _localSource.insert(TaskDto.fromDomain(task));
      return const Right(unit);
    } catch (e) {
      return Left(TaskFailure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> delete(Task task) async {
    try {
      await _localSource.delete(TaskDto.fromDomain(task));
      return const Right(unit);
    } catch (e) {
      return Left(TaskFailure.unexpected(message: e.toString()));
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> update(Task task) async {
    try {
      await _localSource.update(TaskDto.fromDomain(task));
      return const Right(unit);
    } catch (e) {
      return const Left(TaskFailure.unableToUpdate());
    }
  }

  @override
  Stream<Either<TaskFailure, Task>> fetchTask(Task task) async* {
    final taskDtoStream =
        _localSource.fetchNoteStream(TaskDto.fromDomain(task));
    yield* taskDtoStream.map(
      (taskDto) => right<TaskFailure, Task>(taskDto.toDomain()),
    );
  }
}
