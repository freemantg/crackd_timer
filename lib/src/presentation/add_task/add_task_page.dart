import 'package:auto_route/auto_route.dart';
import 'package:crackd_timer/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/blocs.dart';
import '../../domain/tasks/task.dart';
import '../../shared/styles.dart';
import '../shared/widgets.dart';
import 'widgets/widgets.dart';

@RoutePage()
class AddTaskPage extends ConsumerWidget {
  final Task? task;
  const AddTaskPage({Key? key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocProvider(
      create: (context) => ref.watch(taskFormBlocProvider)
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
                    (success) => context.router.popUntilRoot(),
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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppearanceSelector(),
          HSpace(size: Insets.m),
          TitleTextFormField(),
          DescriptionTextFormField(),
        ],
      ),
    );
  }
}
