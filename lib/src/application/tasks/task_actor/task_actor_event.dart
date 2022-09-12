part of 'task_actor_bloc.dart';

@freezed
class TaskActorEvent with _$TaskActorEvent {
  const factory TaskActorEvent.deleted(Task task) = _Deleted;
  const factory TaskActorEvent.completeToggled(Task task) = _CompleteToggled;
  const factory TaskActorEvent.incrementPomodoro(Task task) =
      _IncrementPomodoro;
  const factory TaskActorEvent.update(
      Either<TaskFailure, Unit> failureOrSuccess) = _Updated;
}
