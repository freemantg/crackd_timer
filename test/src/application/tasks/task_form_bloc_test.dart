import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/blocs.dart';
import 'package:crackd_timer/src/domain/emojis/emoji.dart';
import 'package:crackd_timer/src/domain/tasks/task.dart';
import 'package:crackd_timer/src/infrastructure/core/task_repository.dart';
import 'package:crackd_timer/src/shared/colors_list.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'task_form_bloc_test.mocks.dart';

@GenerateMocks([TaskRepository])
void main() {
  late MockTaskRepository mockTaskRepository;
  late TaskFormBloc taskFormBloc;
  group('TaskFormBloc', () {
    final Task initialTask = Task(
      id: 'fixed-uuid',
      title: '',
      description: '',
      activeSessions: 1,
      taskColor: colorsList.first,
      emoji: Emoji.initial(),
      completedSessions: 0,
      completed: false,
    );

    setUp(
      () {
        mockTaskRepository = MockTaskRepository();
        taskFormBloc = TaskFormBloc(mockTaskRepository);
      },
    );

    tearDown(() {
      taskFormBloc.close();
    });

    blocTest(
      'emits [TaskFormState] when initialized event is added with valid task',
      build: () => taskFormBloc,
      act: (bloc) =>
          bloc.add(TaskFormEvent.initialized(initialTask: initialTask)),
      expect: () => [
        TaskFormState.initial().copyWith(
          task: initialTask,
          showErrorMessages: false,
          isEditing: true,
          isSaving: false,
          saveFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<TaskFormBloc, TaskFormState>(
      'emits [TaskFormState] when titleChanged event is added',
      build: () => taskFormBloc,
      act: (bloc) {
        bloc.add(TaskFormEvent.initialized(initialTask: initialTask));
        bloc.add(const TaskFormEvent.titleChanged('New Title'));
      },
      expect: () => [
        TaskFormState(
          task: initialTask.copyWith(title: 'New Title'),
          showErrorMessages: false,
          isEditing: false,
          isSaving: false,
          saveFailureOrSuccessOption: none(),
        )
      ],
    );
  });
}
