import 'package:flutter/material.dart';

import '../../../shared/styles.dart';
import 'styled_grid_paper.dart';

class StyledCurvedDecoration extends StatelessWidget {
  const StyledCurvedDecoration({
    Key? key,
    required this.child,
    this.grid = false,
    this.padding = const EdgeInsets.fromLTRB(
      Insets.l,
      Insets.m,
      Insets.l,
      0,
    ),
  }) : super(key: key);

  final Widget child;
  final bool grid;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(Corners.btn),
        ),
      ),
      child: StyledGridPaper(
        color: grid ? theme.primaryColor.withOpacity(0.1) : Colors.transparent,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
