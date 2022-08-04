import 'package:flutter/material.dart';

import '../../../shared/styles.dart';

class StyledCard extends StatelessWidget {
  const StyledCard({
    super.key,
    required this.child,
    this.color = const Color(0xFFE1E5FF),
    this.paddingInsets = Insets.l,
  });

  final Widget child;
  final Color color;
  final double paddingInsets;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingInsets),
        child: child,
      ),
    );
  }
}
