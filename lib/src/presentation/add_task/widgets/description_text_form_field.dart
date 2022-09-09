import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tasks/task_form/bloc/task_form_bloc.dart';

class DescriptionTextFormField extends StatelessWidget {
  const DescriptionTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return BlocConsumer<TaskFormBloc, TaskFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) =>
          textEditingController.text = state.task.description,
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          minLines: 5,
          maxLines: null,
          decoration: InputDecoration(
            hintText: 'Note...',
            filled: true,
            fillColor: Theme.of(context).colorScheme.primaryContainer,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
          onChanged: (value) => context.read<TaskFormBloc>().add(
                TaskFormEvent.descriptionChanged(value),
              ),
        );
      },
    );
  }
}
