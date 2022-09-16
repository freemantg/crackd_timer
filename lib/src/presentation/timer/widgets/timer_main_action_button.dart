import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../injection_container.dart';
import '../../../application/settings/settings_bloc/settings_bloc.dart';
import '../../../application/timer/timer_bloc/timer_bloc.dart';
import '../../../shared/app_router.gr.dart';
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
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        isPlaying = (state.status == TimerStatus.running);
      },
      builder: (context, state) {
        return Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: theme.cardColor,
                  elevation: isPlaying ? 0 : Elevation.button,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Corners.s5),
                  ),
                ),
                onPressed: () {
                  switch (state.status) {
                    case TimerStatus.initial:
                      timerBloc
                          .add(TimerEvent.started(duration: state.duration));
                      break;
                    case TimerStatus.running:
                      timerBloc.add(const TimerEvent.paused());
                      break;
                    case TimerStatus.paused:
                      timerBloc.add(const TimerEvent.resumed());
                      break;
                    default:
                      null;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    isPlaying ? 'STOP' : 'START',
                    style: TextStyles.h1Dark,
                  ),
                ),
              ),
            ),
            Expanded(child: _buildSecondaryActionButton(state.status))
          ],
        );
      },
    );
  }
}

_buildSecondaryActionButton(TimerStatus status) {
  switch (status) {
    case TimerStatus.running:
      return const _TimerSkipButton();
    case TimerStatus.paused:
      return const _TimerResetButton();
    default:
      return const SizedBox.shrink();
  }
}

class _TimerSkipButton extends StatelessWidget {
  const _TimerSkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Theme.of(context).cardColor,
            title: const Text('Skip Pomodoro'),
            content:
                const Text('Are you sure you want to finish the round early?'),
            actions: [
              TextButton(
                onPressed: () => getIt<AppRouter>().popUntilRoot(),
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  context.read<TimerBloc>().add(const TimerEvent.skipped());
                  getIt<AppRouter>().popUntilRoot();
                },
                child: const Text('CONFIRM'),
              ),
            ],
          );
        },
      ),
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
