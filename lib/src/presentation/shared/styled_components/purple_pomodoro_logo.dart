import 'package:flutter/material.dart';

class PurplePomodoroLogo extends StatelessWidget {
  final double size;
  final Color? color;

  const PurplePomodoroLogo({
    Key? key,
    required this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/purple_pomodoro_logo.png',
      height: size,
      color: color,
    );
  }
}
