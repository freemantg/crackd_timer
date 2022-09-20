import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/cubits.dart';
import '../../../domain/tasks/task.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import 'widgets.dart';

class SelectedTaskCard extends StatelessWidget {
  const SelectedTaskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, Task>(
      builder: (context, state) {
        return StyledCard(
          color: state.taskColor,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Sessions:',
                    style: TextStyles.body1Dark,
                  ),
                  const Spacer(),
                  Text(
                    state.completedSessions.toString(),
                    style: TextStyles.title1Dark,
                  ),
                  Text(' / ', style: TextStyles.title2Dark),
                  Text(
                    state.activeSessions.toString(),
                    style: TextStyles.title2Dark,
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: Text(state.title, style: TextStyles.title1Dark),
                  ),
                  const VSpace(size: Insets.sm),
                  Text(state.emoji.emoji, style: TextStyles.title1),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
