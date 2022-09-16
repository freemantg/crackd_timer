import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/blocs.dart';
import '../../../shared/colors_list.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      padding: const EdgeInsets.fromLTRB(
        Insets.l,
        Insets.sm,
        Insets.l,
        Insets.m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: Icon(Icons.keyboard_arrow_down)),
          Text('Color', style: TextStyles.h2),
          const HSpace(size: Insets.m),
          const _ColorListViewBuilder(),
        ],
      ),
    );
  }
}

class _ColorListViewBuilder extends StatelessWidget {
  const _ColorListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: ((context, index) {
          final color = colorsList[index];
          return _ColorTile(color: color);
        }),
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      builder: (context, state) {
        final isSelected = state.task.taskColor == color;

        return GestureDetector(
          onTap: () => context
              .read<TaskFormBloc>()
              .add(TaskFormEvent.colorChanged(color)),
          child: Container(
            margin: const EdgeInsets.only(right: Insets.m),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(Corners.s10),
              border: isSelected
                  ? Border.all(color: Colors.white, width: 4.0)
                  : null,
            ),
          ),
        );
      },
    );
  }
}
