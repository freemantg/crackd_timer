import 'package:crackd_timer/src/infrastructure/tasks/tasks_dto.dart';
import 'package:dartz/dartz.dart' hide Task;

import '../../domain/core/task_failure.dart';
import '../../domain/core/tasks_interface.dart';
import '../../domain/tasks/task.dart';
import 'tasks_local_service.dart';

class TaskRepository implements TasksInterface {
  final TasksLocalSource _localSource;

  TaskRepository(this._localSource);

  @override
  Stream<Either<TaskFailure, List<Task>>> fetchTasks() =>
      _handleTaskStream(_localSource.getAllTasksStream());

  @override
  Stream<Either<TaskFailure, List<Task>>> fetchActiveTasks() =>
      _handleTaskStream(_localSource.getActiveTasksStream());

  @override
  Stream<Either<TaskFailure, List<Task>>> fetchCompletedTasks() =>
      _handleTaskStream(_localSource.getCompletedTasksStream());

  @override
  Stream<Either<TaskFailure, Task>> fetchTask(Task task) =>
      _handleSingleTaskStream(
          _localSource.fetchNoteStream(TaskDto.fromDomain(task)));

  @override
  Future<Either<TaskFailure, Unit>> create(Task task) async {
    try {
      await _localSource.insert(TaskDto.fromDomain(task));
      return right(unit);
    } catch (e) {
      return left(const TaskFailure.unableToCreate());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> delete(Task task) async {
    try {
      await _localSource.delete(TaskDto.fromDomain(task));
      return right(unit);
    } catch (e) {
      return left(const TaskFailure.unableToDelete());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> update(Task task) async {
    try {
      await _localSource.update(TaskDto.fromDomain(task));
      return right(unit);
    } catch (e) {
      return left(const TaskFailure.unableToUpdate());
    }
  }

  Stream<Either<TaskFailure, List<Task>>> _handleTaskStream(
      Stream<List<TaskDto>> taskDtoStream) async* {
    yield* taskDtoStream.asyncMap(
      (taskDtos) => right<TaskFailure, List<Task>>(
        taskDtos.map(_mapTaskDtoToTask).toList(),
      ),
    );
  }

  Stream<Either<TaskFailure, Task>> _handleSingleTaskStream(
      Stream<TaskDto> taskDtoStream) async* {
    yield* taskDtoStream.map(
      (taskDto) => right<TaskFailure, Task>(_mapTaskDtoToTask(taskDto)),
    );
  }

  Task _mapTaskDtoToTask(TaskDto taskDto) => taskDto.toDomain();
}
