import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/timer/widgets/timer_main_action_button.dart';

import '../../shared/styles.dart';
import '../shared/styled_components/styled_app_bar.dart';

import 'widgets/pomodoro_counter.dart';
import 'widgets/styled_timer_display.dart';
import 'widgets/styled_timer_text_display.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StyledAppBar(title: 'Add new task'),
      body: _TimerBody(),
    );
  }
}

class _TimerBody extends StatelessWidget {
  const _TimerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        PomodoroCounter(),
        HSpace(size: Insets.xl),
        StyledTimerDisplay(),
        HSpace(size: Insets.xs),
        StyledTimerTextDisplay(),
        Spacer(),
        TimerMainActionButton(),
        Spacer(flex: 2),
      ],
    );
  }
}
