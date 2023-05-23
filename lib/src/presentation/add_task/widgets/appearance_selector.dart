import 'package:crackd_timer/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/blocs.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import 'widgets.dart';

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
          child: CircleAvatar(
            backgroundColor: state.task.taskColor,
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
          borderRadius: BorderRadius.vertical(top: Corners.s5Radius),
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
                    child: Consumer(
                      builder: (context, ref, child) {
                        return BlocProvider(
                          create: (context) => ref.watch(emojisBlocProvider)
                            ..add(const EmojisEvent.started()),
                          child: BlocBuilder<EmojisBloc, EmojisState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                loadSuccess: (state) =>
                                    IconSelector(emojis: state.emojis),
                                orElse: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            },
                          ),
                        );
                      },
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
        color: theme.colorScheme.surface,
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
