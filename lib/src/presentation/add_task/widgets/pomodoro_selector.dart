import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class PomodoroSelector extends StatelessWidget {
  const PomodoroSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.minus),
        ),
        const VSpace(size: Insets.xl),
        Text('4', style: TextStyles.h1),
        const VSpace(size: Insets.xl),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.plus),
        ),
      ],
    );
  }
}
