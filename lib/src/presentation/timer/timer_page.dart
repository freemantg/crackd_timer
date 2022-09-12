import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_timer/src/presentation/shared/styled_components/styled_app_bar.dart';
import 'package:robot_timer/src/presentation/timer/widgets/timer_main_action_button.dart';

import '../../application/timer/timer_bloc/timer_bloc.dart';
import '../../shared/styles.dart';

import 'widgets/pomodoro_counter.dart';
import 'widgets/styled_timer_display.dart';
import 'widgets/styled_timer_text_display.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppBar.timerPage(),
      body: const _TimerBody(),
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
      children: [
        BlocBuilder<TimerBloc, TimerState>(
          builder: (context, state) {
            return Text(state.timerCompletedCount.toString());
          },
        ),
        const Spacer(),
        const PomodoroCounter(),
        const HSpace(size: Insets.xl),
        const StyledTimerDisplay(),
        const HSpace(size: Insets.xs),
        const StyledTimerTextDisplay(),
        const Spacer(),
        const TimerMainActionButton(),
        const Spacer(flex: 2),
      ],
    );
  }
}
