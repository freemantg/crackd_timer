import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      automaticallyImplyLeading: false,
      title: title,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  factory StyledAppBar.addTaskPage() {
    return StyledAppBar._(
      title: BlocBuilder<TaskFormBloc, TaskFormState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  state.isEditing ? 'Edit Task' : 'Add Task',
                  style: TextStyles.h2Dark,
                ),
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
          final theme = Theme.of(context);
          final bool isDark = theme.brightness == Brightness.dark;

          return Stack(
            alignment: Alignment.center,
            children: [
              Text(
                state.title.isEmpty ? 'Select a Task' : state.title,
                style: isDark ? TextStyles.h2 : TextStyles.h2Dark,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () =>
                      getIt<AppRouter>().push(AddTaskRoute(task: state)),
                  icon: Icon(
                    Icons.more_horiz,
                    color: isDark ? null : const Color(0xFF222328),
                  ),
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
