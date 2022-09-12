import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:robot_timer/src/presentation/add_task/widgets/appearance_selector.dart';

import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../shared/styles.dart';

class TitleTextFormField extends HookWidget {
  const TitleTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textEditingController = useTextEditingController();

    return BlocConsumer<TaskFormBloc, TaskFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.task.title;
      },
      builder: (context, state) {
        return Row(
          children: [
            const Expanded(
              child: AppearanceSelector(),
            ),
            const VSpace(size: Insets.sm),
            Expanded(
              flex: 4,
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Title...',
                  filled: true,
                  fillColor: theme.colorScheme.primaryContainer,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Corners.s10Radius),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) => context.read<TaskFormBloc>().add(
                      TaskFormEvent.titleChanged(value),
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
