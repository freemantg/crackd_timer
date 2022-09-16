import 'package:flutter/material.dart';

import '../../../shared/styles.dart';

class StyledContainer extends StatelessWidget {
  final Widget child;

  const StyledContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(Insets.m),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(Corners.s10),
      ),
      child: child,
    );
  }
}
