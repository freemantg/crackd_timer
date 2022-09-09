import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../shared/app_router.gr.dart';
import '../../../shared/styles.dart';

class StyledAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StyledAppBar({
    Key? key,
    this.title = '',
    this.centerTitle = true,
  }) : super(key: key);

  final String title;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Text(title),
      actions: const [
        Padding(
          padding: EdgeInsets.all(Insets.m),
          child: StyledSaveButton(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class StyledSaveButton extends StatelessWidget {
  const StyledSaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.read<TaskFormBloc?>()?.add(const TaskFormEvent.saved());
        getIt<AppRouter>().popUntilRoot();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: Insets.m),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(TextOpacity.highEmphasis),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Icon(
          Icons.check_rounded,
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
