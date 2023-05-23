import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/task_failure.dart';
import '../../../domain/tasks/task.dart';
import '../../../infrastructure/core/task_repository.dart';

part 'task_actor_event.dart';
part 'task_actor_state.dart';
part 'task_actor_bloc.freezed.dart';

class TaskActorBloc extends Bloc<TaskActorEvent, TaskActorState> {
  final TaskRepository _taskRepository;
  TaskActorBloc(TaskRepository taskRepository)
      : _taskRepository = taskRepository,
        super(const _Initial()) {
    on<TaskActorEvent>(
      (event, emit) async {
        event.when(
          deleted: (task) async {
            emit(const TaskActorState.actionInProgress());
            final failureOrSuccess = await _taskRepository.delete(task);
            add(TaskActorEvent.update(failureOrSuccess));
          },
          completeToggled: (task) async {
            emit(const TaskActorState.actionInProgress());
            final failureOrSuccess = await _taskRepository
                .update(task.copyWith(completed: !task.completed));
            add(TaskActorEvent.update(failureOrSuccess));
          },
          incrementPomodoro: (Task task) async {
            emit(const TaskActorState.actionInProgress());
            final failureOrSuccess = await _taskRepository.update(
              task.copyWith(completedSessions: task.completedSessions + 1),
            );
            add(TaskActorEvent.update(failureOrSuccess));
          },
          update: (failureOrSuccess) {
            emit(
              failureOrSuccess.fold(
                (l) => TaskActorState.actionFailure(l),
                (r) => const TaskActorState.actionSuccess(),
              ),
            );
          },
        );
      },
    );
  }
}
