import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:robot_timer/src/presentation/shared/styled_components/styled_save_button.dart';

import '../../../../injection_container.dart';
import '../../../application/core/task_cubit/task_cubit.dart';
import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../domain/tasks/task.dart';
import '../../../shared/app_router.gr.dart';
import '../../../shared/text_styles.dart';

class StyledAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool centerTitle;

  const StyledAppBar._({
    required this.title,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  factory StyledAppBar.addTaskPage() {
    return StyledAppBar._(
      title: BlocBuilder<TaskFormBloc, TaskFormState>(
        builder: (context, state) {
          return Row(
            children: [
              Text(
                state.isEditing ? 'Edit Task' : 'Add Task',
                style: TextStyles.h2,
              ),
              const Spacer(),
              StyledSaveButton(
                onTap: () => context
                    .read<TaskFormBloc>()
                    .add(const TaskFormEvent.saved()),
              ),
            ],
          );
        },
      ),
    );
  }

  factory StyledAppBar.timerPage() {
    return StyledAppBar._(
      centerTitle: true,
      title: BlocBuilder<TaskCubit, Task>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Text(
                state.title,
                style: TextStyles.h2,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () =>
                      getIt<AppRouter>().push(AddTaskRoute(task: state)),
                  icon: const FaIcon(FontAwesomeIcons.pencil),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  factory StyledAppBar.settingsPage() {
    return StyledAppBar._(
      centerTitle: true,
      title: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.ideographic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              StyledSaveButton(onTap: () {}),
            ],
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
