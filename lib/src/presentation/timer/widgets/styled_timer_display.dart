import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/text_styles.dart';

class StyledTimerDisplay extends StatelessWidget {
  const StyledTimerDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Text(
          _printDuration(state.duration),
          style: TextStyles.h1HighOpacity.copyWith(
            fontSize: state.duration >= 3600 ? 72 : 96.0,
          ),
        );
      },
    );
  }
}

String _printDuration(int timerDuration) {
  final duration = Duration(seconds: timerDuration);

  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitHours =
      duration.inHours <= 0 ? '' : '${twoDigits(duration.inHours)}:';
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "$twoDigitHours$twoDigitMinutes:$twoDigitSeconds";
}
