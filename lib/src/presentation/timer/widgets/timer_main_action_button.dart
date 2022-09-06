import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/settings/settings_bloc/settings_bloc.dart';
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
                style: ElevatedButton.styleFrom(
                  elevation: isPlaying ? 0 : Elevation.button,
                  primary: theme.cardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Corners.s5),
                  ),
                ),
                onPressed: () => state.maybeMap(
                  initial: (_) => timerBloc
                      .add(TimerEvent.started(duration: state.duration)),
                  running: (_) => timerBloc.add(const TimerEvent.paused()),
                  paused: (_) => timerBloc.add(const TimerEvent.resumed()),
                  orElse: () => null,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    isPlaying ? 'STOP' : 'START',
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
              child: state.maybeMap(
                running: (_) => const _TimerSkipButton(),
                paused: (_) => const _TimerResetButton(),
                orElse: () => const SizedBox(),
              ),
            )
          ],
        );
      },
    );
  }
}

class _TimerSkipButton extends StatelessWidget {
  const _TimerSkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const FaIcon(
        FontAwesomeIcons.forward,
        color: Colors.white,
      ),
    );
  }
}

class _TimerResetButton extends StatelessWidget {
  const _TimerResetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.rotateLeft,
        color: Colors.white,
      ),
      onPressed: () =>
          context.read<TimerBloc>().add(_buildResetAction(context)),
    );
  }

  _buildResetAction(BuildContext context) {
    final timerState = context.read<TimerBloc>().state;
    final settingsState = context.read<SettingsBloc>().state;

    switch (timerState.timerType) {
      case TimerType.focus:
        return TimerEvent.reset(duration: settingsState.focusTime);
      case TimerType.shortBreak:
        return TimerEvent.reset(duration: settingsState.shortBreakTime);
      case TimerType.longBreak:
        return TimerEvent.reset(duration: settingsState.longBreakTime);
    }
  }
}
