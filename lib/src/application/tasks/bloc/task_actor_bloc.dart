import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/infrastructure/core/task_repository.dart';

import '../../../domain/core/task_failure.dart';
import '../../../domain/tasks/task.dart';

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
        await event.when<Future<void>>(
          deleted: (task) async {
            print('deetoeededed');
            emit(const TaskActorState.actionInProgress());
            final failureOrAction = await _taskRepository.delete(task);
            print(failureOrAction);
            emit(
              failureOrAction.fold(
                (l) => TaskActorState.actionFailure(l),
                (r) => const TaskActorState.actionSuccess(),
              ),
            );
          },
          completeToggled: (task) async {
            emit(const TaskActorState.actionInProgress());
            final failureOrAction = await _taskRepository
                .update(task.copyWith(completed: !task.completed));
            emit(
              failureOrAction.fold(
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
