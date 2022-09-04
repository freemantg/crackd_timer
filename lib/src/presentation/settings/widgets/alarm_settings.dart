import 'package:flutter/material.dart';

import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class AlarmSettings extends StatelessWidget {
  const AlarmSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Alarm Sound',
          style: TextStyles.title1,
        ),
        const HSpace(size: Insets.l),
      ],
    );
  }
}
