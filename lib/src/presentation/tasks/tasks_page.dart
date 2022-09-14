import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:robot_timer/src/presentation/tasks/widgets/pomodoro_card.dart';

import 'package:robot_timer/src/shared/text_styles.dart';
import 'package:robot_timer/src/shared/styles.dart';

import '../../application/tasks/task_watcher/task_watcher_bloc.dart';
import '../shared/styled_components/styled_curved_decoration.dart';
import 'widgets/add_pomodoro_card.dart';
import 'widgets/date_displayer.dart';
import 'widgets/mini_timer_display.dart';
import 'widgets/task_filter_button.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: _buildScaffoldBody(context),
      ),
    );
  }

  Widget _buildScaffoldBody(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(),
        _buildForeground(),
      ],
    );
  }

  Widget _buildForeground() {
    return DraggableScrollableSheet(
      snap: true,
      maxChildSize: 1,
      initialChildSize: 0.8,
      minChildSize: 0.8,
      builder: ((context, scrollController) {
        return StyledCurvedDecoration(
          grid: true,
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                return Column(
                  children: [
                    const TaskFilterButton(),
                    state.maybeMap(
                      loadInProgress: (_) => const CircularProgressIndicator(),
                      loadSuccess: (state) {
                        return StaggeredGrid.count(
                          crossAxisCount: state.tasks.length > 1 ? 2 : 1,
                          children: [
                            ...state.tasks
                                .map((task) => PomodoroCard(task: task))
                                .toList(),
                            const AddPomodoroCard(),
                          ],
                        );
                      },
                      orElse: SizedBox.shrink,
                    ),
                    const HSpace(size: Insets.m),
                  ],
                );
              },
            ),
          ),
        );
      }),
    );
  }

  Widget _buildBackground() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.l),
      child: Column(
        children: [
          HSpace(size: Insets.topGutter),
          Row(
            children: const [
              Spacer(),
            ],
          ),
          const HSpace(size: Insets.l),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Timers', style: TextStyles.h1HighOpacity),
                  const HSpace(size: Insets.sm),
                  const DateDisplay(),
                ],
              ),
              const Spacer(),
              const MiniTimerDisplay(),
            ],
          ),
        ],
      ),
    );
  }
}

  // BlocBuilder<AlarmCubit, AlarmState>(
  //               builder: (context, state) {
  //                 return IconButton(
  //                   onPressed: () =>
  //                       context.read<AlarmCubit>().toggleTickingSound(),
  //                   icon: FaIcon(
  //                     state.tickingSound
  //                         ? FontAwesomeIcons.bellSlash
  //                         : FontAwesomeIcons.bell,
  //                     color: Colors.white.withOpacity(
  //                       TextOpacity.mediumEmphasis,
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ),