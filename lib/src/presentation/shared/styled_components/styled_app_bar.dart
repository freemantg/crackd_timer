import 'package:flutter/material.dart';

import '../../../shared/styles.dart';

class StyledAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StyledAppBar({
    Key? key,
    this.action,
  }) : super(key: key);

  final Widget? action;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      actions: [
        action ??
            Padding(
              padding: const EdgeInsets.all(Insets.sm),
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(horizontal: Insets.m),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: const Icon(
                  Icons.check_rounded,
                  color: Color(0xFF6A6DB0),
                ),
              ),
            ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
