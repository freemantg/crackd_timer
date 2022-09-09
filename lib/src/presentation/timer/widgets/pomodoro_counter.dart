import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/styles.dart';
import '../../shared/styled_components/purple_pomodoro_logo.dart';
import '../../../shared/text_styles.dart';

class PomodoroCounter extends StatelessWidget {
  const PomodoroCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _StyledLowOpacityContainer(
      child: Column(
        children: [
          BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) {
              return Text(
                _buildTimerText(state.timerType),
                style: TextStyles.title1MediumOpacity,
              );
            },
          ),
          const HSpace(size: Insets.sm),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PurplePomodoroLogo(
                size: 16,
                color: Colors.white.withOpacity(TextOpacity.highEmphasis),
              ),
              const VSpace(size: Insets.sm),
              Icon(Icons.apple, color: theme.colorScheme.background),
              const VSpace(size: Insets.sm),
              Icon(Icons.apple, color: theme.colorScheme.background),
              const VSpace(size: Insets.sm),
              Icon(Icons.apple, color: theme.colorScheme.background),
            ],
          ),
        ],
      ),
    );
  }

  String _buildTimerText(TimerType timerType) {
    switch (timerType) {
      case TimerType.focus:
        return 'Pomodoro';

      case TimerType.shortBreak:
        return 'Short Break';

      case TimerType.longBreak:
        return 'Long Break';
    }
  }
}

class _StyledLowOpacityContainer extends StatelessWidget {
  final Widget child;

  const _StyledLowOpacityContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.m),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(Corners.s10),
      ),
      child: child,
    );
  }
}
