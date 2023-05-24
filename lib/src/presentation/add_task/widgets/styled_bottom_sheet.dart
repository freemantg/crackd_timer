import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/blocs.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class StyledBottomSheet extends StatelessWidget {
  const StyledBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const _StyledSaveButton(),
            Container(
              padding: const EdgeInsets.all(Insets.m),
              color: Theme.of(context).cardColor,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _ActionButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () => context
                        .read<TaskFormBloc>()
                        .add(const TaskFormEvent.decrementPomodoro()),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        state.task.activeSessions.toString(),
                        style: TextStyles.h1Dark,
                      ),
                      Text(
                        'sessions',
                        style: TextStyles.body1Dark,
                      )
                    ],
                  ),
                  _ActionButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () => context
                        .read<TaskFormBloc>()
                        .add(const TaskFormEvent.incrementPomodoro()),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _StyledSaveButton extends StatelessWidget {
  const _StyledSaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () =>
          context.read<TaskFormBloc>().add(const TaskFormEvent.saved()),
      child: Padding(
        padding: const EdgeInsets.all(Insets.m),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(Insets.sm),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(Corners.s5),
              ),
              child: const FaIcon(
                FontAwesomeIcons.check,
                color: Colors.black,
                size: 16.0,
              ),
            ),
            const VSpace(size: Insets.sm),
            Text('confirm', style: TextStyles.title1)
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
