import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/blocs.dart';
import 'package:crackd_timer/src/domain/core/task_failure.dart';
import 'package:crackd_timer/src/domain/tasks/task.dart';
import 'package:crackd_timer/src/infrastructure/core/task_repository.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'task_watcher_bloc_test.mocks.dart';

@GenerateMocks([TaskRepository])
void main() {
  group('TaskWatcherBloc', () {
    late TaskWatcherBloc taskWatcherBloc;
    late MockTaskRepository mockTaskRepository;

    setUp(
      () {
        mockTaskRepository = MockTaskRepository();
        taskWatcherBloc = TaskWatcherBloc(mockTaskRepository);
      },
    );

    tearDown(() {
      taskWatcherBloc.close();
    });

    // Helper functions to mock streams of tasks from the repository.
    void setupTasksStream() {
      when(mockTaskRepository.fetchTasks()).thenAnswer(
        (_) => Stream.value(const Right<TaskFailure, List<Task>>([])),
      );
    }

    void setupActiveTasksStream() {
      when(mockTaskRepository.fetchActiveTasks()).thenAnswer(
        (_) => Stream.value(const Right<TaskFailure, List<Task>>([])),
      );
    }

    void setupCompletedTasksStream() {
      when(mockTaskRepository.fetchCompletedTasks()).thenAnswer(
        (_) => Stream.value(const Right<TaskFailure, List<Task>>([])),
      );
    }

    test('initial state should be TaskWatcherState.initial()', () {
      expect(taskWatcherBloc.state, const TaskWatcherState.initial());
    });

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits [TaskWatcherState.loadInProgress(), TaskWatcherState.loadSuccess()] when tasks are fetched successfully',
      build: () {
        setupTasksStream();
        return taskWatcherBloc;
      },
      act: (bloc) => bloc.add(const TaskWatcherEvent.watchAllStarted()),
      expect: () => [
        const TaskWatcherState.loadInProgress(),
        const TaskWatcherState.loadSuccess(tasks: []),
      ],
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits [TaskWatcherState.loadInProgress(), TaskWatcherState.loadSuccess()] when active tasks are fetched successfully',
      build: () {
        setupActiveTasksStream();
        return taskWatcherBloc;
      },
      act: (bloc) => bloc.add(const TaskWatcherEvent.watchActiveStarted()),
      expect: () => [
        const TaskWatcherState.loadInProgress(),
        const TaskWatcherState.loadSuccess(tasks: []),
      ],
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits [TaskWatcherState.loadInProgress(), TaskWatcherState.loadSuccess()] when completed tasks are fetched successfully',
      build: () {
        setupCompletedTasksStream();
        return taskWatcherBloc;
      },
      act: (bloc) => bloc.add(const TaskWatcherEvent.watchCompletedStarted()),
      expect: () => [
        const TaskWatcherState.loadInProgress(),
        const TaskWatcherState.loadSuccess(tasks: []),
      ],
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits [TaskWatcherState.loadSuccess()] when tasks are received successfully',
      build: () => taskWatcherBloc,
      act: (bloc) => bloc.add(const TaskWatcherEvent.tasksReceived(Right([]))),
      expect: () => [const TaskWatcherState.loadSuccess(tasks: [])],
    );

    blocTest<TaskWatcherBloc, TaskWatcherState>(
      'emits [TaskWatcherState.loadFailure()] when tasks are received with a failure',
      build: () => taskWatcherBloc,
      act: (bloc) => bloc.add(
          const TaskWatcherEvent.tasksReceived(Left(TaskFailure.unexpected()))),
      expect: () => [
        const TaskWatcherState.loadFailure(
            taskFailure: TaskFailure.unexpected())
      ],
    );
  });
}
