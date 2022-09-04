import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../shared/app_router.gr.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class AddPomodoroCard extends StatelessWidget {
  const AddPomodoroCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => Provider.of<AppRouter>(context, listen: false)
          .push(const AddTaskRoute()),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Corners.s10),
        ),
        color: theme.colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(Insets.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(
                FontAwesomeIcons.plus,
                color: theme.iconTheme.color!
                    .withOpacity(TextOpacity.mediumEmphasis),
              ),
              const HSpace(size: Insets.l),
              Text(
                'Add Task',
                style: TextStyles.title1.copyWith(
                  color: theme.textTheme.headline1!.color!
                      .withOpacity(TextOpacity.highEmphasis),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
