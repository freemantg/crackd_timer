import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../shared/text_styles.dart';

class DateDisplay extends StatelessWidget {
  const DateDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('EEEE, MMMM d').format(DateTime.now()),
      style: TextStyles.title1MediumOpacity,
    );
  }
}
