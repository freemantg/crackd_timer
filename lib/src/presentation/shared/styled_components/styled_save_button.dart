import 'package:flutter/material.dart';

import '../../../shared/styles.dart';

class StyledSaveButton extends StatelessWidget {
  const StyledSaveButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: Insets.m),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(TextOpacity.highEmphasis),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Icon(
          Icons.check_rounded,
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
