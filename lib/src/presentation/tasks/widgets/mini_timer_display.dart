import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import '../../../shared/extensions.dart';

class MiniTimerDisplay extends StatelessWidget {
  const MiniTimerDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(Insets.m),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(Corners.s10),
          ),
          child: BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) {
              return Column(
                children: [
                  Text(
                    state.duration.durationToString(),
                    style: TextStyles.h1HighOpacity,
                  ),
                  const HSpace(size: Insets.sm),
                  Text(
                    _buildTimerText(state.timerType),
                    style: TextStyles.title1MediumOpacity.copyWith(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

String _buildTimerText(TimerType timerType) {
  switch (timerType) {
    case TimerType.focus:
      return 'Focus Time';

    case TimerType.shortBreak:
      return 'Short Break';

    case TimerType.longBreak:
      return 'Long Break';
  }
}
