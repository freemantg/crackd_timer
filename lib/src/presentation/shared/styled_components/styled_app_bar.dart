import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../injection_container.dart';
import '../../../application/core/task_cubit/task_cubit.dart';
import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../domain/tasks/task.dart';
import '../../../shared/app_router.dart';
import '../../../shared/app_router.gr.dart';
import '../../../shared/styles.dart';
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
          return Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: Insets.m),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        state.isEditing ? 'EDIT TASK' : 'ADD TASK',
                        style: TextStyles.h2,
                      ),
                      const VSpace(size: Insets.xs),
                      const Icon(
                        Icons.info_outline,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => getIt<AppRouter>().popUntilRoot(),
                  icon: const FaIcon(FontAwesomeIcons.xmark),
                ),
              )
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
    return const StyledAppBar._(
      centerTitle: true,
      title: SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
