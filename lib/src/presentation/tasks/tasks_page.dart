import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../application/blocs.dart';
import '../../application/settings/alarm_cubit/alarm_cubit.dart';
import '../../shared/app_router.gr.dart';
import '../../shared/styles.dart';
import '../../shared/text_styles.dart';
import 'widgets/widgets.dart';

@RoutePage()
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          _buildTopSection(context),
          const HSpace(size: Insets.sm),
          _buildTasksSection(context),
          const _AddTaskListTile()
        ],
      ),
    );
  }

  Widget _buildTasksSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.m),
      child: StyledCard(
        elevation: 0,
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const TaskFilterButton(),
            const HSpace(size: Insets.m),
            BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
              builder: ((context, state) {
                return state.maybeMap(
                  loadSuccess: (state) => ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.tasks.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final task = state.tasks[index];
                      return TaskListTile(task: task);
                    },
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddTaskListTile extends StatelessWidget {
  const _AddTaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.m),
      child: GestureDetector(
        onTap: () => context.router.push(AddTaskRoute()),
        child: StyledCard(
          elevation: 0,
          color: theme.colorScheme.surface,
          child: const Center(child: FaIcon(FontAwesomeIcons.plus)),
        ),
      ),
    );
  }
}

Widget _buildTopSection(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Insets.m),
    child: Column(
      children: [
        HSpace(size: Insets.topGutter),
        const Row(
          children: [
            Text("crack'd", style: TextStyles.h1),
            Spacer(),
            _AlarmIconButton(),
          ],
        ),
        const HSpace(size: Insets.sm),
        const MiniTimerDisplay(),
        const HSpace(size: Insets.xs),
        const SelectedTaskCard(),
      ],
    ),
  );
}

class _AlarmIconButton extends StatelessWidget {
  const _AlarmIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlarmCubit, AlarmState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () => context.read<AlarmCubit>().toggleTickingSound(),
          icon: FaIcon(
            state.tickingSound
                ? FontAwesomeIcons.solidBellSlash
                : FontAwesomeIcons.solidBell,
          ),
        );
      },
    );
  }
}
