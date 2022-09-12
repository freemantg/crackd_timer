import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/infrastructure/core/task_repository.dart';
import 'package:dartz/dartz.dart' hide Task;

import '../../../../domain/core/task_failure.dart';
import '../../../../domain/emojis/emoji.dart';
import '../../../../domain/tasks/task.dart';

part 'task_form_event.dart';
part 'task_form_state.dart';
part 'task_form_bloc.freezed.dart';

class TaskFormBloc extends Bloc<TaskFormEvent, TaskFormState> {
  final TaskRepository _taskRepository;

  TaskFormBloc(TaskRepository taskRepository)
      : _taskRepository = taskRepository,
        super(TaskFormState.initial()) {
    on<TaskFormEvent>((event, emit)  {
      event.when(
        initialized: (event) {
          final initialTask = event;
          if (initialTask != null) {
            emit(state.copyWith(
              task: initialTask,
              isEditing: true,
            ));
          } else {
            emit(TaskFormState.initial());
          }
        },
        titleChanged: (event) {
          emit(
            state.copyWith(
              task: state.task.copyWith(title: event),
            ),
          );
          print(state.task.title);
        },
        descriptionChanged: (event) {
          emit(
            state.copyWith(
              task: state.task.copyWith(description: event),
            ),
          );
        },
        activeSessionsChanged: (event) {
          emit(
            state.copyWith(
              task: state.task.copyWith(activeSessions: event),
            ),
          );
        },
        colorChanged: (event) {
          emit(
            state.copyWith(
              task: state.task.copyWith(taskColor: event),
            ),
          );
        },
        emojiChanged: (event) {
          emit(
            state.copyWith(
              task: state.task.copyWith(emoji: event),
            ),
          );
        },
        incrementPomodoro: () => emit(
          state.copyWith(
            task: state.task.copyWith(
              activeSessions: state.task.activeSessions + 1,
            ),
          ),
        ),
        decrementPomodoro: () {
          if (state.task.activeSessions <= 1) return;
          emit(
            state.copyWith(
              task: state.task
                  .copyWith(activeSessions: state.task.activeSessions - 1),
            ),
          );
        },
        saved: () async {
          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));

          final failureOrSuccess = state.isEditing
              ? await _taskRepository.update(state.task)
              : await _taskRepository.create(state.task);

          add(TaskFormEvent.saveInProgress(failureOrSuccess));
        },
        saveInProgress: (failureOrSuccess) {
          failureOrSuccess.fold(
            (l) => emit(state.copyWith(
                isSaving: false,
                saveFailureOrSuccessOption: optionOf(left(l)))),
            (r) => emit(state.copyWith(
                isSaving: false,
                saveFailureOrSuccessOption: optionOf(right(r)))),
          );
        },
      );
    });
  }
}
