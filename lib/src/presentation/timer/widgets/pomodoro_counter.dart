import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_timer/src/domain/emojis/emoji.dart';

import '../../../application/core/task_cubit/task_cubit.dart';
import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class PomodoroCounter extends StatelessWidget {
  const PomodoroCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = context.select((TaskCubit taskCubit) => taskCubit.state);

    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return _StyledLowOpacityContainer(
              child: Column(
                children: [
                  Text(
                    _buildTimerText(state.timerType),
                    style: TextStyles.title1MediumOpacity,
                  ),
                  const HSpace(size: Insets.m),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth / 2,
                    ),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: Insets.sm,
                      runSpacing: Insets.sm,
                      children: List.generate(
                        task.activeSessions > task.completedSessions
                            ? task.activeSessions
                            : task.completedSessions,
                        (index) {
                          return index >= task.completedSessions
                              ? _EmojiIndicator(emoji: task.emoji)
                              : _EmojiIndicator(
                                  emoji: task.emoji,
                                  isCompleted: true,
                                );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
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

class _EmojiIndicator extends StatelessWidget {
  const _EmojiIndicator({
    Key? key,
    required this.emoji,
    this.isCompleted = false,
  }) : super(key: key);

  final Emoji emoji;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Text(
      emoji.emoji,
      style: TextStyles.h2.copyWith(
        color: isCompleted ? null : Colors.white.withOpacity(0.25),
      ),
    );
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
