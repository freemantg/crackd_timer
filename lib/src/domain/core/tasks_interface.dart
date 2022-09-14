import 'package:dartz/dartz.dart' hide Task;

import '../tasks/task.dart';
import 'task_failure.dart';

abstract class TasksInterface {
  Stream<Either<TaskFailure, Task>> fetchTask(Task task);
  Stream<Either<TaskFailure, List<Task>>> fetchTasks();
  Stream<Either<TaskFailure, List<Task>>> fetchActiveTasks();
  Stream<Either<TaskFailure, List<Task>>> fetchCompletedTasks();

  Future<Either<TaskFailure, Unit>> create(Task task);
  Future<Either<TaskFailure, Unit>> update(Task task);
  Future<Either<TaskFailure, Unit>> delete(Task task);
}
