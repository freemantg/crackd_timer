import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/text_styles.dart';

class StyledTimerTextDisplay extends StatelessWidget {
  const StyledTimerTextDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Text(
          _buildTimerText(state.timerType),
          style: TextStyles.title1MediumOpacity,
        );
      },
    );
  }

  _buildTimerText(TimerType timerType) {
    switch (timerType) {
      case TimerType.focus:
        return 'Pomodoro Time, Stay focused!';
      default:
        return 'Take a break!';
    }
  }
}
