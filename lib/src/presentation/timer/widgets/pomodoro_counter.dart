import 'package:crackd_timer/src/presentation/timer/widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/core/task_cubit/task_cubit.dart';
import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../domain/emojis/emoji.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import '../../shared/styled_components/styled_components.dart';

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
            return StyledContainer(
              child: Column(
                children: [
                  Text(
                    state.timerType.getTimerName,
                    style: TextStyles.title1,
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
