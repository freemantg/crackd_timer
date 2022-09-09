import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:robot_timer/src/presentation/shared/styled_components/purple_pomodoro_logo.dart';
import 'package:robot_timer/src/presentation/tasks/widgets/pomodoro_card.dart';

import 'package:robot_timer/src/shared/text_styles.dart';
import 'package:robot_timer/src/shared/styles.dart';

import '../../application/tasks/task_watcher/task_watcher_bloc.dart';
import '../shared/styled_components/styled_curved_decoration.dart';
import 'widgets/add_pomodoro_card.dart';
import 'widgets/date_displayer.dart';
import 'widgets/pomodoro_counter_display.dart';

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
      initialChildSize: 0.77,
      minChildSize: 0.77,
      builder: ((context, scrollController) {
        final theme = Theme.of(context);

        return StyledCurvedDecoration(
          grid: true,
          child: Column(
            children: [
              FaIcon(
                FontAwesomeIcons.gripLines,
                color: theme.iconTheme.color?.withOpacity(
                  TextOpacity.lowEmphasis,
                ),
              ),
              const HSpace(size: Insets.sm),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: const BouncingScrollPhysics(),
                  child: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
                    buildWhen: (previous, current) => previous != current,
                    builder: (context, state) {
                      return state.maybeMap(
                        loadInProgress: (_) =>
                            const CircularProgressIndicator(),
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
                        orElse: () => Container(
                          height: 24,
                          width: 24,
                          color: Colors.red,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
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
            children: [
              const PurplePomodoroLogo(size: 48),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.white.withOpacity(TextOpacity.mediumEmphasis),
                ),
              ),
            ],
          ),
          const HSpace(size: Insets.l),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Pomodoros', style: TextStyles.h1HighOpacity),
                  const HSpace(size: Insets.sm),
                  const DateDisplayer(),
                ],
              ),
              const Spacer(),
              const PomodoroCounterDisplay(),
            ],
          ),
        ],
      ),
    );
  }
}
