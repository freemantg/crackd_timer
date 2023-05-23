import 'package:auto_route/auto_route.dart';
import 'package:crackd_timer/src/shared/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/cubits.dart';
import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/app_router.gr.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class MiniTimerDisplay extends StatelessWidget {
  const MiniTimerDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = context.select((TaskCubit taskCubit) => taskCubit.state);

    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return StyledCard(
          color: task.taskColor,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            _buildTimerText(state.timerType),
                            style: TextStyles.title1Dark,
                          ),
                          const VSpace(size: Insets.sm),
                          const StatusChip(),
                        ],
                      ),
                      const HSpace(size: Insets.xs),
                      Text(
                        'Stay focused',
                        style: TextStyles.captionDark,
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Icon(
                      Icons.more_vert,
                      color: Color(0xFF1E1E1E),
                    ),
                    onTap: () => context.router.push(AddTaskRoute(task: task)),
                  )
                ],
              ),
              const HSpace(size: Insets.m),
              Text(
                state.duration.durationToString(),
                style: TextStyles.h1Dark.copyWith(fontSize: 36),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Color(0xFF1E1E1E),
                    ),
                    onPressed: () => context
                        .read<TimerBloc>()
                        .add(TimerEvent.started(duration: state.duration)),
                  ),
                  const _StyledVerticalDivider(),
                  IconButton(
                    icon: const Icon(
                      Icons.pause,
                      color: Color(0xFF1E1E1E),
                    ),
                    onPressed: () => context.read<TimerBloc>().add(
                          const TimerEvent.paused(),
                        ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _StyledVerticalDivider extends StatelessWidget {
  const _StyledVerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 14.0),
      child: const VerticalDivider(thickness: 1.5),
    );
  }
}

class StatusChip extends StatelessWidget {
  const StatusChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.s10),
        color: Colors.black.withOpacity(0.05),
      ),
      child: Text(
        'active',
        style: TextStyles.caption,
      ),
    );
  }
}

class StyledCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double? elevation;

  const StyledCard({
    super.key,
    required this.child,
    this.color,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: color ?? theme.cardColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Corners.s5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.m),
        child: child,
      ),
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
