import 'package:flutter/material.dart';

import '../../../shared/styles.dart';

class StyledDivider extends StatelessWidget {
  const StyledDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: Insets.m),
      child: Divider(),
    );
  }
}
