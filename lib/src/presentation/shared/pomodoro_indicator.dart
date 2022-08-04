import 'package:flutter/material.dart';

class PomodoroIndicator extends StatelessWidget {
  const PomodoroIndicator({
    Key? key,
    this.isComplete = false,
  }) : super(key: key);

  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isComplete ? const Color(0xFF6A6DB0) : const Color(0xFFDDD9FE),
      ),
      height: 8,
      width: 8,
    );
  }
}
