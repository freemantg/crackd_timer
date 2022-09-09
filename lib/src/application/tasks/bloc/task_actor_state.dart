part of 'task_actor_bloc.dart';

@freezed
class TaskActorState with _$TaskActorState {
  const factory TaskActorState.initial() = _Initial;
  const factory TaskActorState.actionInProgress() = _ActionInProgress;
  const factory TaskActorState.actionSuccess() = _ActionSuccess;
  const factory TaskActorState.actionFailure(TaskFailure taskFailure) =
      _ActionFailure;
}
