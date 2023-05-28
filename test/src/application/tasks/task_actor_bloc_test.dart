import 'package:bloc_test/bloc_test.dart';
import 'package:crackd_timer/src/application/blocs.dart';
import 'package:crackd_timer/src/domain/core/task_failure.dart';
import 'package:crackd_timer/src/domain/tasks/task.dart';
import 'package:crackd_timer/src/infrastructure/core/task_repository.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'task_actor_bloc_test.mocks.dart';

@GenerateMocks([TaskRepository])
void main() {
  late MockTaskRepository mockTaskRepository;
  final testTask = Task.empty();

  setUp(() {
    mockTaskRepository = MockTaskRepository();
  });

  group('TaskActorBloc', () {
    group(
      'TaskDeleteEvent',
      () {
        blocTest<TaskActorBloc, TaskActorState>(
          'emits [actionInProgress, actionSuccess] when task deletion is successful',
          build: () {
            when(mockTaskRepository.delete(testTask))
                .thenAnswer((_) async => const Right(unit));
            return TaskActorBloc(mockTaskRepository);
          },
          act: (bloc) => bloc.add(TaskActorEvent.deleted(testTask)),
          expect: () => [
            const TaskActorState.actionInProgress(),
            const TaskActorState.actionSuccess(),
          ],
        );
        blocTest<TaskActorBloc, TaskActorState>(
          'emits [actionInProgress, actionFailure] when task deletion is unsuccessful',
          build: () {
            when(mockTaskRepository.delete(testTask))
                .thenAnswer((_) async => const Left(TaskFailure.unexpected()));
            return TaskActorBloc(mockTaskRepository);
          },
          act: (bloc) => bloc.add(TaskActorEvent.deleted(testTask)),
          expect: () => [
            const TaskActorState.actionInProgress(),
            const TaskActorState.actionFailure(TaskFailure.unexpected()),
          ],
        );
      },
    );

    group(
      'completeToggled',
      () {
        blocTest<TaskActorBloc, TaskActorState>(
          'emits [actionInProgress, actionSuccess] when toggling complete is successful',
          build: () {
            when(mockTaskRepository.update(any))
                .thenAnswer((_) async => const Right(unit));
            return TaskActorBloc(mockTaskRepository);
          },
          act: (bloc) => bloc.add(TaskActorEvent.completeToggled(testTask)),
          expect: () => [
            const TaskActorState.actionInProgress(),
            const TaskActorState.actionSuccess(),
          ],
        );

        blocTest<TaskActorBloc, TaskActorState>(
          'emits [actionInProgress, actionFailure] when toggling complete is unsuccessful',
          build: () {
            when(mockTaskRepository.update(any))
                .thenAnswer((_) async => const Left(TaskFailure.unexpected()));
            return TaskActorBloc(mockTaskRepository);
          },
          act: (bloc) => bloc.add(TaskActorEvent.completeToggled(testTask)),
          expect: () => [
            const TaskActorState.actionInProgress(),
            const TaskActorState.actionFailure(TaskFailure.unexpected()),
          ],
        );
      },
    );

    group(
      'incrementPomodoro',
      () {
        blocTest<TaskActorBloc, TaskActorState>(
          'emits [actionInProgress, actionSuccess] when incrementing pomodoro is successful',
          build: () {
            when(mockTaskRepository.update(any))
                .thenAnswer((_) async => const Right(unit));
            return TaskActorBloc(mockTaskRepository);
          },
          act: (bloc) => bloc.add(TaskActorEvent.incrementPomodoro(testTask)),
          expect: () => [
            const TaskActorState.actionInProgress(),
            const TaskActorState.actionSuccess(),
          ],
        );

        blocTest<TaskActorBloc, TaskActorState>(
          'emits [actionInProgress, actionFailure] when incrementing pomodoro is unsuccessful',
          build: () {
            when(mockTaskRepository.update(any))
                .thenAnswer((_) async => const Left(TaskFailure.unexpected()));
            return TaskActorBloc(mockTaskRepository);
          },
          act: (bloc) => bloc.add(TaskActorEvent.incrementPomodoro(testTask)),
          expect: () => [
            const TaskActorState.actionInProgress(),
            const TaskActorState.actionFailure(TaskFailure.unexpected()),
          ],
        );
      },
    );

    // Test for Update Event
    group('UpdateEvent', () {
      blocTest<TaskActorBloc, TaskActorState>(
        'emits [actionFailure] when update is unsuccessful',
        build: () => TaskActorBloc(mockTaskRepository),
        act: (bloc) => bloc
            .add(const TaskActorEvent.update(Left(TaskFailure.unexpected()))),
        expect: () => [
          const TaskActorState.actionFailure(TaskFailure.unexpected()),
        ],
      );

      blocTest<TaskActorBloc, TaskActorState>(
        'emits [actionSuccess] when update is successful',
        build: () => TaskActorBloc(mockTaskRepository),
        act: (bloc) => bloc.add(const TaskActorEvent.update(Right(unit))),
        expect: () => [
          const TaskActorState.actionSuccess(),
        ],
      );
    });
  });
}
