import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/text_styles.dart';
import '../../../shared/extensions.dart';

class StyledTimerDisplay extends StatelessWidget {
  const StyledTimerDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (previous, current) => previous.duration != current.duration,
      builder: (context, state) {
        return Text(
          state.duration.durationToString(),
          style: TextStyles.h1.copyWith(
            fontSize: state.duration >= 3600 ? 72 : 96.0,
          ),
        );
      },
    );
  }
}
