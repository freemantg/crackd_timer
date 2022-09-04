import 'package:flutter/material.dart';

import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class StyledTitleAndSubtitle extends StatelessWidget {
  const StyledTitleAndSubtitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.h2),
        const HSpace(size: Insets.sm),
        Text(subTitle, style: TextStyles.body1.copyWith(color: Colors.grey)),
        const HSpace(size: Insets.m),
      ],
    );
  }
}
