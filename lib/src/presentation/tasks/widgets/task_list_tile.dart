import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/core/task_cubit/task_cubit.dart';
import '../../../application/tasks/task_actor/task_actor_bloc.dart';
import '../../../domain/tasks/task.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class TaskListTile extends StatelessWidget {
  final Task task;

  const TaskListTile({
    required this.task,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Corners.s10),
      ),
      leading: CircleAvatar(
        backgroundColor: task.taskColor,
        child: Text(
          task.emoji.emoji,
          style: TextStyles.h2,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            task.description,
            style: TextStyles.body1.copyWith(
              decoration: task.completed ? TextDecoration.lineThrough : null,
            ),
          ),
          const HSpace(size: Insets.sm),
          Text(task.title,
              style: TextStyles.h2.copyWith(
                decoration: task.completed ? TextDecoration.lineThrough : null,
              )),
          const HSpace(size: Insets.sm),
        ],
      ),
      trailing: Column(
        children: [
          _StyledCheckBox(task: task),
          const Spacer(),
          _CounterChip(task: task)
        ],
      ),
      onTap: () => context.read<TaskCubit>().updateTask(task),
      onLongPress: () =>
          context.read<TaskActorBloc>().add(TaskActorEvent.deleted(task)),
    );
  }
}

class _StyledCheckBox extends StatelessWidget {
  const _StyledCheckBox({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child: Checkbox(
        value: task.completed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Corners.s5),
        ),
        onChanged: (_) => context
            .read<TaskActorBloc>()
            .add(TaskActorEvent.completeToggled(task)),
      ),
    );
  }
}

class _CounterChip extends StatelessWidget {
  const _CounterChip({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.s10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Text(
        '${task.completedSessions} / ${task.activeSessions}',
        style: TextStyles.caption.copyWith(
          color: Colors.black,
          fontSize: 10.0,
        ),
      ),
    );
  }
}
