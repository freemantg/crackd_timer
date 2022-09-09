import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../../injection_container.dart';
import '../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../domain/tasks/task.dart';
import '../../shared/styles.dart';
import '../shared/styled_components/styled_app_bar.dart';
import '../shared/styled_components/styled_curved_decoration.dart';
import '../shared/styled_components/styled_title_subtitle.dart';
import '../../shared/text_styles.dart';
import 'widgets/description_text_form_field.dart';
import 'widgets/pomodoro_selector.dart';
import 'widgets/title_text_form_field.dart';

class AddTaskPage extends StatelessWidget {
  final Task? task;
  const AddTaskPage({Key? key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppBar(title: (task != null) ? 'Edit Task' : 'New Task'),
      body: BlocProvider(
        create: (context) => getIt<TaskFormBloc>()
          ..add(
            TaskFormEvent.initialized(initialTask: task),
          ),
        child: Stack(
          children: [
            const _StyledInstructions(),
            _StyledAddTaskBottomSheet(task: task),
          ],
        ),
      ),
    );
  }
}

class _StyledInstructions extends StatelessWidget {
  const _StyledInstructions({
    Key? key,
  }) : super(key: key);

  static const String _pomodoroInstructions = '''
  1.  **Add tasks**  to work on today
  2.  **Set estimate pomodoros** for each tasks
  3.  **Start timer**  and focus on the task
  4.  **Take a break**  when the alarm ring
  5.  **Iterate**  2-5 until you finish the tasks
''';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.l,
        vertical: Insets.m,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'How to use the Pomodoro?',
                style: TextStyles.h2.copyWith(
                  color: Colors.white.withOpacity(TextOpacity.mediumEmphasis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.sm),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white.withOpacity(TextOpacity.lowEmphasis),
                ),
              ),
            ],
          ),
          Expanded(
            child: Markdown(
              padding: EdgeInsets.zero,
              data: _pomodoroInstructions,
              styleSheet: MarkdownStyleSheet(
                p: TextStyles.title2LowOpacity,
                listBullet: TextStyles.title2LowOpacity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StyledAddTaskBottomSheet extends StatelessWidget {
  final Task? task;
  const _StyledAddTaskBottomSheet({
    this.task,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: BlocBuilder<TaskFormBloc, TaskFormState>(
          builder: (context, state) {
            return StyledCurvedDecoration(
              grid: true,
              padding: const EdgeInsets.all(Insets.l),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledTitleAndSubtitle(
                    title: state.isEditing ? 'Edit Task' : 'Add Task',
                    subTitle: 'What are you working on?',
                  ),
                  const TitleTextFormField(),
                  const HSpace(size: Insets.m),
                  const DescriptionTextFormField(),
                  const HSpace(size: Insets.xl),
                  const StyledTitleAndSubtitle(
                    title: 'Pomodoros',
                    subTitle: 'How many working sessions?',
                  ),
                  const HSpace(size: Insets.m),
                  const PomodoroSelector(),
                  const HSpace(size: Insets.l),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
