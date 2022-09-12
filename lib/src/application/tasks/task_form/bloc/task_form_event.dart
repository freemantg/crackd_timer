part of 'task_form_bloc.dart';

@freezed
class TaskFormEvent with _$TaskFormEvent {
  const factory TaskFormEvent.initialized({Task? initialTask}) = _Initialized;
  //Form Field Changes
  const factory TaskFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory TaskFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;
  const factory TaskFormEvent.activeSessionsChanged(int activeSessions) =
      _ActiveSessionsChanged;
  const factory TaskFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory TaskFormEvent.emojiChanged(Emoji emoji) = _EmojiChanged;
  const factory TaskFormEvent.incrementPomodoro() = _IncrementPomodoro;
  const factory TaskFormEvent.decrementPomodoro() = _DecrementPomodoro;

  //Validation
  const factory TaskFormEvent.saved() = _Saved;
  const factory TaskFormEvent.saveInProgress(
      Either<TaskFailure, Unit> failureOrSuccess) = _SaveInProgress;
}
