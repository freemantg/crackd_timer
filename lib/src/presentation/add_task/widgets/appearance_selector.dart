import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void _showCustomizeModalButtonSheet(BuildContext context) {
    final taskFormBloc = context.read<TaskFormBloc>();

    showModalBottomSheet(
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Corners.s5Radius),
      ),
      context: context,
      builder: (context) {
        return BlocProvider.value(
          value: taskFormBloc,
          child: _buildCustomizeModalContent(context),
        );
      },
    );
  }

  Widget _buildCustomizeModalContent(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Column(
        children: [
          const ColorSelector(),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.only(
                top: Insets.m,
                left: Insets.l,
                right: Insets.l,
              ),
              child: _buildIconSelector(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconSelector(BuildContext context) {
    final emojisBloc = context.read<EmojisBloc>()
      ..add(const EmojisEvent.started());

    return BlocBuilder<EmojisBloc, EmojisState>(
      bloc: emojisBloc,
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) => IconSelector(emojis: state.emojis),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
