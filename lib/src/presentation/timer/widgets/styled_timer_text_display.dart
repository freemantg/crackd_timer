import 'package:crackd_timer/src/presentation/timer/widgets/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/text_styles.dart';

class StyledTimerTextDisplay extends StatelessWidget {
  const StyledTimerTextDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Text(
          state.timerType.getTimerDescription,
          style: TextStyles.title1,
        );
      },
    );
  }
}
