import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';
import '../../../shared/text_styles.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class DescriptionTextFormField extends HookWidget {
  const DescriptionTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<TaskFormBloc, TaskFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.task.description;
      },
      builder: (context, state) {
        return TextFormField(
          maxLines: null,
          style: TextStyles.h2.copyWith(height: 1.5),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Note',
          ),
          controller: textEditingController,
          onChanged: (value) => context
              .read<TaskFormBloc>()
              .add(TaskFormEvent.descriptionChanged(value)),
        );
      },
    );
  }
}
