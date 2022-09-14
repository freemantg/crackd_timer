import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/settings/widgets/alarm_settings.dart';
import 'package:robot_timer/src/presentation/settings/widgets/theme_settings.dart';
import 'package:robot_timer/src/presentation/shared/styled_components/styled_app_bar.dart';

import '../../shared/styles.dart';
import '../shared/styled_components/styled_curved_decoration.dart';
import 'widgets/pomodoro_settings.dart';
import 'widgets/styled_title_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppBar.settingsPage(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _SettingsHeader(),
            _SettingsBottomSheet(),
          ],
        ),
      ),
    );
  }
}

class _SettingsHeader extends StatelessWidget {
  const _SettingsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(Insets.l),
      child: StyledHeadingAndSubHeading(
        title: 'Settings',
        text: 'Customize the properties of your pomodoro',
      ),
    );
  }
}

class _SettingsBottomSheet extends StatelessWidget {
  const _SettingsBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledCurvedDecoration(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HSpace(size: Insets.l),
          PomodoroSettings(),
          HSpace(size: Insets.l),
          Divider(),
          HSpace(size: Insets.l),
          AlarmSettings(),
          Divider(),
          HSpace(size: Insets.l),
          ThemeSettings(),
          HSpace(size: Insets.l),
        ],
      ),
    );
  }
}
