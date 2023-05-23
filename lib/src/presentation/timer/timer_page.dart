import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../shared/styles.dart';
import '../shared/widgets.dart';
import 'widgets/widgets.dart';

@RoutePage()
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
    return const Column(
      children: [
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
