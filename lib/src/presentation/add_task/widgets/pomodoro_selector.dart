import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class PomodoroSelector extends StatelessWidget {
  const PomodoroSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      builder: (context, state) {
        final taskFormBloc = context.read<TaskFormBloc>();

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.minus),
              onPressed: () =>
                  taskFormBloc.add(const TaskFormEvent.decrementPomodoro()),
            ),
            const VSpace(size: Insets.xl),
            Text(state.task.activeSessions.toString(), style: TextStyles.h1),
            const VSpace(size: Insets.xl),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.plus),
              onPressed: () =>
                  taskFormBloc.add(const TaskFormEvent.incrementPomodoro()),
            ),
          ],
        );
      },
    );
  }
}
