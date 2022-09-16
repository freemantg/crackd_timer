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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: Insets.m),
        decoration: BoxDecoration(
          color: const Color(0xFF313C4A),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: const Icon(Icons.check_rounded),
      ),
    );
  }
}
