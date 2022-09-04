import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../shared/styles.dart';
import '../shared/styled_components/styled_app_bar.dart';
import '../shared/styled_components/styled_curved_decoration.dart';
import '../shared/styled_components/styled_title_subtitle.dart';
import '../../shared/text_styles.dart';
import 'widgets/description_text_form_field.dart';
import 'widgets/pomodoro_selector.dart';
import 'widgets/title_text_form_field.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StyledAppBar(title: 'New Task'),
      body: Stack(
        children: const [
          _StyledInstructions(),
          _StyledAddTaskBottomSheet(),
        ],
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
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white.withOpacity(TextOpacity.lowEmphasis),
                ),
              )
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
  const _StyledAddTaskBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: StyledCurvedDecoration(
          grid: true,
          padding: const EdgeInsets.all(Insets.l),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              StyledTitleAndSubtitle(
                title: 'Add Task',
                subTitle: 'What are you working on?',
              ),
              TitleTextFormField(),
              HSpace(size: Insets.m),
              DescriptionTextFormField(),
              HSpace(size: Insets.xl),
              StyledTitleAndSubtitle(
                title: 'Pomodoros',
                subTitle: 'How many working sessions?',
              ),
              HSpace(size: Insets.m),
              PomodoroSelector(),
              HSpace(size: Insets.l),
            ],
          ),
        ),
      ),
    );
  }
}
