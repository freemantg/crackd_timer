import 'package:flutter/material.dart';

import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class PomodoroCounterDisplay extends StatelessWidget {
  const PomodoroCounterDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _NumberContainer(count: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.sm),
          child: Text('/', style: TextStyles.h1LowOpacity),
        ),
        const _NumberContainer(count: 15),
      ],
    );
  }
}

class _NumberContainer extends StatelessWidget {
  final int count;

  const _NumberContainer({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.m),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(Corners.s10),
      ),
      child: Center(
        child: Text(count.toString(), style: TextStyles.h1HighOpacity),
      ),
    );
  }
}
