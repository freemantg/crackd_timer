import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/text_styles.dart';
import '../../../shared/extensions.dart';

class StyledTimerDisplay extends StatelessWidget {
  static final _smallStyle = TextStyles.h1.copyWith(fontSize: 72);
  static final _largeStyle = TextStyles.h1.copyWith(fontSize: 96.0);

  const StyledTimerDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (previous, current) => previous.duration != current.duration,
      builder: (context, state) {
        return Text(
          state.duration.durationToString(),
          style: state.duration >= 3600 ? _smallStyle : _largeStyle,
        );
      },
    );
  }
}
