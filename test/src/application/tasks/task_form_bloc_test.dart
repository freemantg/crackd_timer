import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/blocs.dart';
import 'package:crackd_timer/src/domain/core/task_failure.dart';
import 'package:crackd_timer/src/domain/emojis/emoji.dart';
import 'package:crackd_timer/src/domain/tasks/task.dart';
import 'package:crackd_timer/src/infrastructure/core/task_repository.dart';
import 'package:crackd_timer/src/shared/colors_list.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'task_form_bloc_test.mocks.dart';

@GenerateMocks([TaskRepository])
void main() {
  late MockTaskRepository mockTaskRepository;
  late TaskFormBloc taskFormBloc;
  group(
    'TaskFormBloc',
    () {
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

      TaskFormBloc buildInitializedTaskFormBloc() {
        final taskFormBloc = TaskFormBloc(mockTaskRepository);
        taskFormBloc.add(TaskFormEvent.initialized(initialTask: initialTask));
        return taskFormBloc;
      }

      TaskFormState taskFormStateinitialized = TaskFormState.initial().copyWith(
        task: initialTask,
        showErrorMessages: false,
        isEditing: true,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );

      blocTest(
        'emits [TaskFormState] when initialized event is added with valid task',
        build: buildInitializedTaskFormBloc,
        expect: () => [taskFormStateinitialized],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when titleChanged event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async =>
            bloc.add(const TaskFormEvent.titleChanged('New Title')),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            task: initialTask.copyWith(title: 'New Title'),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when descriptionChanged event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async => bloc.add(
          const TaskFormEvent.descriptionChanged('New Description'),
        ),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            task: initialTask.copyWith(description: 'New Description'),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when activeSessionsChanged event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async =>
            bloc.add(const TaskFormEvent.activeSessionsChanged(2)),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            task: initialTask.copyWith(activeSessions: 2),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when colorChanged event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async => bloc.add(
          TaskFormEvent.colorChanged(colorsList[2]),
        ),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            task: initialTask.copyWith(taskColor: colorsList[2]),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when emojiChanged event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async => bloc.add(
          const TaskFormEvent.emojiChanged(
              Emoji(emoji: '🧪', category: 'Test')),
        ),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            task: initialTask.copyWith(
                emoji: const Emoji(emoji: '🧪', category: 'Test')),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when incrementPomodoro event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async => bloc.add(
          const TaskFormEvent.incrementPomodoro(),
        ),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            task: initialTask.copyWith(activeSessions: 2),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when decrementPomodoro event is added',
        build: buildInitializedTaskFormBloc,
        act: (bloc) async => bloc.add(
          const TaskFormEvent.decrementPomodoro(),
        ),
        expect: () => [taskFormStateinitialized],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when saved event is added',
        build: () {
          when(mockTaskRepository.create(any))
              .thenAnswer((_) async => right(unit));
          when(mockTaskRepository.update(any))
              .thenAnswer((_) async => right(unit));
          return buildInitializedTaskFormBloc();
        },
        act: (bloc) async => bloc.add(
          const TaskFormEvent.saved(),
        ),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ),
          taskFormStateinitialized.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(right(unit)),
          ),
        ],
      );

      blocTest<TaskFormBloc, TaskFormState>(
        'emits [TaskFormState] when saved event is added and fails',
        build: () {
          when(mockTaskRepository.update(any)).thenAnswer(
            (_) async => left(const TaskFailure.unexpected()),
          );
          return buildInitializedTaskFormBloc();
        },
        act: (bloc) async => bloc.add(
          const TaskFormEvent.saved(),
        ),
        expect: () => [
          taskFormStateinitialized,
          taskFormStateinitialized.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ),
          taskFormStateinitialized.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(
              left(const TaskFailure.unexpected()),
            ),
          ),
        ],
      );
    },
  );
}
