import 'package:crackd_timer/src/domain/emojis/emoji.dart';
import 'package:crackd_timer/src/domain/tasks/task.dart';
import 'package:crackd_timer/src/infrastructure/core/task_repository.dart';
import 'package:crackd_timer/src/infrastructure/core/tasks_local_service.dart';
import 'package:crackd_timer/src/infrastructure/tasks/tasks_dto.dart';
import 'package:crackd_timer/src/shared/colors_list.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'task_repository_test.mocks.dart';

@GenerateMocks([TasksLocalSource])
void main() {
  late MockTasksLocalSource mockTasksLocalSource;
  late TaskRepository taskRepository;

  setUp(
    () {
      mockTasksLocalSource = MockTasksLocalSource();
      taskRepository = TaskRepository(mockTasksLocalSource);
    },
  );

  group(
    'TaskRepository',
    () {
      final testTask = Task(
        id: '1',
        title: 'Test task',
        description: 'This is a test task',
        emoji: Emoji.initial(),
        taskColor: colorsList.first,
        activeSessions: 4,
        completedSessions: 0,
        completed: false,
      );

      final testTaskDto = TaskDto.fromDomain(testTask);

      test('fetchTask(Task task) should return a specific task', () async {
        when(mockTasksLocalSource.fetchNoteStream(testTaskDto))
            .thenAnswer((_) => Stream.value((testTaskDto)));

        expect(
          taskRepository.fetchTask(testTask),
          emitsInOrder([right(testTask)]),
        );
      });

      test(
          'fetchTask(Task task) should return TaskFailure.unexpected when an exception is thrown',
          () {
        when(mockTasksLocalSource.fetchNoteStream(testTaskDto))
            .thenAnswer((_) => Stream.error(Exception('Database error')));

        expect(
          taskRepository.fetchTask(testTask),
          emitsError(isA<Exception>()),
        );
      });

      test(
          'fetchTasks() should return TaskFailure.unexpected when an exception is thrown',
          () async {
        when(mockTasksLocalSource.getAllTasksStream())
            .thenAnswer((_) => Stream.error(Exception('Database error')));

        expect(
          taskRepository.fetchTasks(),
          emitsError(isA<Exception>()),
        );
      });

      test('create(Task task) should return right(unit) on successful creation',
          () async {
        when(mockTasksLocalSource.insert(any))
            .thenAnswer((_) async => const Right(unit));

        final result = await taskRepository.create(testTask);
        expect(result, equals(right(unit)));
      });

      test('delete(Task task) should return right(unit) on successful deletion',
          () async {
        when(mockTasksLocalSource.delete(any))
            .thenAnswer((_) async => const Right(unit));

        final result = await taskRepository.delete(testTask);
        expect(result, equals(right(unit)));
      });

      test('update(Task task) should return right(unit) on successful update',
          () async {
        when(mockTasksLocalSource.update(any))
            .thenAnswer((_) async => const Right(unit));

        final result = await taskRepository.update(testTask);
        expect(result, equals(right(unit)));
      });

      test(
          'fetchActiveTasks() should return TaskFailure.unexpected when an exception is thrown',
          () async {
        when(mockTasksLocalSource.getActiveTasksStream())
            .thenAnswer((_) => Stream.error(Exception('Database error')));

        expect(
          taskRepository.fetchActiveTasks(),
          emitsError(isA<Exception>()),
        );
      });

      test(
          'fetchCompletedTasks() should return TaskFailure.unexpected when an exception is thrown',
          () async {
        when(mockTasksLocalSource.getCompletedTasksStream())
            .thenAnswer((_) => Stream.error(Exception('Database error')));

        expect(
          taskRepository.fetchCompletedTasks(),
          emitsError(isA<Exception>()),
        );
      });
    },
  );
}
