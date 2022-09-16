import 'package:flutter/material.dart';
import 'package:robot_timer/src/shared/styles.dart';

import '../../../shared/text_styles.dart';

class StyledHeadingAndSubHeading extends StatelessWidget {
  const StyledHeadingAndSubHeading({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.h1),
        const HSpace(size: Insets.sm),
        Text(text, style: TextStyles.body1)
      ],
    );
  }
}
