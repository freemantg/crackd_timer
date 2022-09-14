import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:robot_timer/src/application/tasks/task_watcher/task_watcher_bloc.dart';

import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

enum TaskFilter { all, active, complete }

class TaskFilterButton extends HookWidget {
  const TaskFilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = useState(0);

    return Row(
      children: [
        GestureDetector(
          child: const Icon(Icons.filter_list),
          onTap: () {
            (index.value < TaskFilter.values.length - 1)
                ? index.value++
                : index.value = TaskFilter.values.first.index;
            _buildTaskFilterAction(context, TaskFilter.values[index.value]);
          },
        ),
        _StyledGridHeading(toBeginningOfSentenceCase(
          TaskFilter.values[index.value].name,
        )!),
      ],
    );
  }
}

void _buildTaskFilterAction(
  BuildContext context,
  TaskFilter taskFilter,
) {
  switch (taskFilter) {
    case TaskFilter.all:
      return context
          .read<TaskWatcherBloc>()
          .add(const TaskWatcherEvent.watchAllStarted());
    case TaskFilter.active:
      return context
          .read<TaskWatcherBloc>()
          .add(const TaskWatcherEvent.watchActiveStarted());
    case TaskFilter.complete:
      return context
          .read<TaskWatcherBloc>()
          .add(const TaskWatcherEvent.watchCompletedStarted());
  }
}

class _StyledGridHeading extends StatelessWidget {
  const _StyledGridHeading(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.m,
        horizontal: Insets.sm,
      ),
      child: Text(title, style: TextStyles.h2),
    );
  }
}
