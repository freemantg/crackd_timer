import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection_container.dart';
import '../../application/blocs.dart';
import '../../domain/tasks/task.dart';
import '../../shared/app_router.gr.dart';
import '../../shared/styles.dart';
import '../../shared/text_styles.dart';
import '../shared/widgets.dart';
import 'widgets/widgets.dart';



class AddTaskPage extends StatelessWidget {
  final Task? task;
  const AddTaskPage({Key? key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TaskFormBloc>()
        ..add(TaskFormEvent.initialized(initialTask: task)),
      child: BlocListener<TaskFormBloc, TaskFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                    (failure) => null,
                    (success) => getIt<AppRouter>().popUntilRoot(),
                  ));
        },
        child: Scaffold(
          appBar: StyledAppBar.addTaskPage(),
          body: const _BuildBody(),
          bottomSheet: const StyledBottomSheet(),
        ),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppearanceSelector(),
          HSpace(size: Insets.m),
          TitleTextFormField(),
          DescriptionTextFormField(),
        ],
      ),
    );
  }
}

class _IconChip extends StatelessWidget {
  const _IconChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(Insets.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Corners.s10),
        color: theme.colorScheme.surface,
      ),
      child: Text(
        'task icon',
        style: TextStyles.body1.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
