import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/core/task_cubit/task_cubit.dart';
import '../../../application/tasks/task_actor/task_actor_bloc.dart';
import '../../../domain/tasks/task.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class PomodoroCard extends HookWidget {
  final Task task;
  const PomodoroCard({
    required this.task,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showDeleteButton = useState(false);

    return GestureDetector(
      onTap: () => context.read<TaskCubit>().updateTask(task),
      onLongPress: () => showDeleteButton.value = !showDeleteButton.value,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Corners.s10),
        ),
        color: task.taskColor,
        child: Padding(
          padding: const EdgeInsets.all(Insets.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(task.emoji.emoji, style: TextStyles.h2),
                  const Spacer(),
                  if (showDeleteButton.value)
                    GestureDetector(
                      child: const FaIcon(
                        FontAwesomeIcons.xmark,
                        color: Colors.white70,
                      ),
                      onTap: () {
                        showDeleteButton.value = !showDeleteButton.value;
                        context.read<TaskActorBloc>().add(
                              TaskActorEvent.deleted(task),
                            );
                      },
                    ),
                ],
              ),
              if (task.title.isNotEmpty) ...[
                const HSpace(size: Insets.m),
                Text(
                  task.title,
                  style: TextStyles.title1.copyWith(
                    decoration:
                        task.completed ? TextDecoration.lineThrough : null,
                    color: Colors.black.withOpacity(TextOpacity.highEmphasis),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (task.description.isNotEmpty) ...[
                const HSpace(size: Insets.sm),
                Text(
                  task.description,
                  style: TextStyles.body1.copyWith(
                    decoration:
                        task.completed ? TextDecoration.lineThrough : null,
                    color: Colors.black.withOpacity(
                      TextOpacity.mediumEmphasis,
                    ),
                  ),
                ),
              ],
              const HSpace(size: Insets.sm),
              Row(
                children: [
                  _StyledCheckBox(task: task),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      text: task.completedSessions.toString(),
                      style: TextStyles.body1.copyWith(
                        color: Colors.black
                            .withOpacity(TextOpacity.mediumEmphasis),
                      ),
                      children: [
                        TextSpan(
                          text: ' / ${task.activeSessions}',
                          style: TextStyles.body1.copyWith(
                            color:
                                Colors.black.withOpacity(TextOpacity.disabled),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
    final theme = Theme.of(context);

    return SizedBox(
      height: 24,
      width: 24,
      child: Checkbox(
        value: task.completed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Corners.s5),
        ),
        fillColor: MaterialStatePropertyAll(
          theme.backgroundColor.withOpacity(TextOpacity.lowEmphasis),
        ),
        onChanged: (_) => context
            .read<TaskActorBloc>()
            .add(TaskActorEvent.completeToggled(task)),
      ),
    );
  }
}
