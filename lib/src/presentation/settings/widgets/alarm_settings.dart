import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

import '../../../application/settings/alarm_cubit/alarm_cubit.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import '../../shared/styled_components/styled_title_subtitle.dart';

class AlarmSettings extends StatelessWidget {
  const AlarmSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StyledTitleAndSubtitle(
          title: 'Notifications',
          subTitle: 'Enable notifications',
        ),
        const HSpace(size: Insets.l),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ticking Sound',
              style: TextStyles.title1,
            ),
            const _StyledCheckBox(),
          ],
        ),
        const HSpace(size: Insets.xl),
        Text('Alarm Sound', style: TextStyles.title1),
        const HSpace(size: Insets.l),
        ...AlarmSound.values.map((sound) => _AlarmTile(alarmSound: sound)),
      ],
    );
  }
}

class _StyledCheckBox extends StatelessWidget {
  const _StyledCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<AlarmCubit, AlarmState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<AlarmCubit>().toggleTickingSound(),
          child: AnimatedContainer(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: state.tickingSound
                  ? theme.colorScheme.primaryContainer
                  : theme.disabledColor,
              borderRadius: BorderRadius.circular(Insets.sm),
            ),
            duration: kThemeAnimationDuration,
          ),
        );
      },
    );
  }
}

class _AlarmTile extends StatelessWidget {
  const _AlarmTile({
    Key? key,
    required this.alarmSound,
  }) : super(key: key);

  final AlarmSound alarmSound;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AlarmCubit, AlarmState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(toBeginningOfSentenceCase(alarmSound.name)!),
                GestureDetector(
                  onTap: () =>
                      context.read<AlarmCubit>().updateAlarmSound(alarmSound),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 24,
                      minWidth: 24,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: state.alarmSound == alarmSound
                            ? theme.colorScheme.primaryContainer
                            : theme.disabledColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const HSpace(size: Insets.xl),
          ],
        );
      },
    );
  }
}
