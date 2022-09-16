import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../application/add_task/emojis/emojis_bloc.dart';
import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import 'color_selector.dart';
import 'icon_selector.dart';

class AppearanceSelector extends StatelessWidget {
  const AppearanceSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => _showCustomizeModalButtonSheet(context),
          child: Container(
            height: 48.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Corners.s10),
              color: state.task.taskColor,
            ),
            child: Center(
              child: Text(
                state.task.emoji.emoji,
                style: TextStyles.h1,
              ),
            ),
          ),
        );
      },
    );
  }

  _showCustomizeModalButtonSheet(BuildContext context) {
    final taskFormBloc = context.read<TaskFormBloc>();

    return showModalBottomSheet(
        isScrollControlled: true,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Corners.s10Radius),
        ),
        context: context,
        builder: (context) {
          return BlocProvider.value(
            value: taskFormBloc,
            child: FractionallySizedBox(
              heightFactor: 0.8,
              child: Column(
                children: [
                  const ColorSelector(),
                  _StyledContainer(
                    child: BlocProvider(
                      create: (context) =>
                          getIt<EmojisBloc>()..add(const EmojisEvent.started()),
                      child: BlocBuilder<EmojisBloc, EmojisState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            loadSuccess: (state) =>
                                IconSelector(emojis: state.emojis),
                            orElse: () => const Center(
                                child: CircularProgressIndicator()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class _StyledContainer extends StatelessWidget {
  final Widget child;

  const _StyledContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        color: theme.cardColor,
        padding: const EdgeInsets.only(
          top: Insets.m,
          left: Insets.l,
          right: Insets.l,
        ),
        child: child,
      ),
    );
  }
}
