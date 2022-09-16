import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/blocs.dart';
import '../../../shared/text_styles.dart';

class TitleTextFormField extends StatelessWidget {
  const TitleTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return BlocConsumer<TaskFormBloc, TaskFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) =>
          textEditingController.text = state.task.title,
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          style: TextStyles.h1.copyWith(fontSize: 28.0),
          autofocus: true,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 3.0,
                color: Theme.of(context).cardColor,
              ),
            ),
            hintText: 'Title',
          ),
          onChanged: (value) => context.read<TaskFormBloc>().add(
                TaskFormEvent.titleChanged(value),
              ),
        );
      },
    );
  }
}
