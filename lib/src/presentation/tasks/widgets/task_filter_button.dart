import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

import '../../../application/blocs.dart';
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
        _StyledHeading(toBeginningOfSentenceCase(
          TaskFilter.values[index.value].name,
        )!),
        const Spacer(),
        GestureDetector(
          child: const Icon(Icons.filter_list),
          onTap: () {
            (index.value < TaskFilter.values.length - 1)
                ? index.value++
                : index.value = TaskFilter.values.first.index;
            _buildTaskFilterAction(context, TaskFilter.values[index.value]);
          },
        ),
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

class _StyledHeading extends StatelessWidget {
  const _StyledHeading(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyles.title1);
  }
}
