import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/settings/settings_bloc/settings_bloc.dart';
import '../../../shared/styles.dart';
import '../../shared/styled_components/styled_title_subtitle.dart';
import '../../../shared/text_styles.dart';

class PomodoroSettings extends StatelessWidget {
  const PomodoroSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final settingsBloc = context.read<SettingsBloc>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StyledTitleAndSubtitle(
              title: 'Your Pomodoro',
              subTitle: 'Duration (in minutes)',
            ),
            const HSpace(size: Insets.sm),
            Row(
              children: [
                _StyledDurationInputTile(
                  title: 'Focus Time',
                  minutes: state.focusTime,
                  onChange: (minutes) => settingsBloc
                      .add(SettingsEvent.updateFocusTime(minutes: minutes)),
                ),
                const VSpace(size: Insets.m),
                _StyledDurationInputTile(
                  title: 'Short Break',
                  minutes: state.shortBreakTime,
                  onChange: (minutes) => settingsBloc.add(
                      SettingsEvent.updateShortBreakTime(minutes: minutes)),
                ),
                const VSpace(size: Insets.m),
                _StyledDurationInputTile(
                  title: 'Long Break',
                  minutes: state.longBreakTime,
                  onChange: (minutes) => settingsBloc
                      .add(SettingsEvent.updateLongBreakTime(minutes: minutes)),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _StyledDurationInputTile extends HookWidget {
  const _StyledDurationInputTile({
    required this.title,
    required this.minutes,
    required this.onChange,
  });

  final int minutes;
  final String title;
  final void Function(String value) onChange;

  @override
  Widget build(BuildContext context) {
    var textController = useTextEditingController(text: minutes.toString());

    return _StyledContainer(
      child: Column(
        children: [
          TextFormField(
            controller: textController,
            maxLength: 2,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            textAlign: TextAlign.center,
            style: TextStyles.h1.copyWith(color: Colors.black),
            decoration: const InputDecoration(
              border: InputBorder.none,
              counterText: '',
            ),
            onChanged: onChange,
          ),
          Text(title, style: TextStyles.caption.copyWith(color: Colors.black)),
        ],
      ),
    );
  }
}

class _StyledContainer extends StatelessWidget {
  const _StyledContainer({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Corners.s10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Insets.m),
          child: child,
        ),
      ),
    );
  }
}
