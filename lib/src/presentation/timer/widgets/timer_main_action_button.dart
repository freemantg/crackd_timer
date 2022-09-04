import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class TimerMainActionButton extends StatelessWidget {
  const TimerMainActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final timerBloc = context.read<TimerBloc>();
    bool isPlaying = false;

    return BlocConsumer<TimerBloc, TimerState>(
      listener: (context, state) {
        isPlaying = state.maybeMap(
          running: (_) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () => state.maybeMap(
                  initial: (_) => timerBloc
                      .add(TimerEvent.started(duration: state.duration)),
                  running: (_) => timerBloc.add(const TimerEvent.paused()),
                  paused: (_) => timerBloc.add(const TimerEvent.resumed()),
                  orElse: () => null,
                ),
                style: ElevatedButton.styleFrom(
                  primary: theme.cardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Corners.s5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    isPlaying ? 'PAUSE' : 'START',
                    style: TextStyles.h1.copyWith(
                      color: theme.brightness == Brightness.dark
                          ? Colors.white.withOpacity(TextOpacity.highEmphasis)
                          : theme.backgroundColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: isPlaying
                  ? IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.forward,
                        color: Colors.white,
                      ),
                    )
                  : const SizedBox.shrink(),
            )
          ],
        );
      },
    );
  }
}
