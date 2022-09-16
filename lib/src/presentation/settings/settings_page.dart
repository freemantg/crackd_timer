import 'package:flutter/material.dart';


import '../../shared/styles.dart';
import '../shared/widgets.dart';
import 'widgets/widgets.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppBar.settingsPage(),
      body: _buildScaffoldBody(),
    );
  }

  SingleChildScrollView _buildScaffoldBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _SettingsHeader(),
          _SettingsBottomSheet(),
        ],
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
          PomodoroSettings(),
          HSpace(size: Insets.l),
          Divider(),
          HSpace(size: Insets.l),
          AlarmSettings(),
          Divider(),
          HSpace(size: Insets.l),
          ThemeSettings(),
        ],
      ),
    );
  }
}
