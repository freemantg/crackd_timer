import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/tasks_page.dart';

import 'package:robot_timer/src/presentation/shared/text_styles.dart';

import '../shared/styles.dart';
import 'shared/styled_components/styled_app_bar.dart';
import 'shared/styled_components/styled_card.dart';
import 'shared/styled_components/styled_divider.dart';
import 'shared/styled_components/styled_title_subTitle.dart';
import 'shared/styled_components/styled_title_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A6DB0),
      appBar: const StyledAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return false;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(Insets.l),
                    child: StyledTitleAndText(
                      title: 'Settings',
                      text: 'Customize the properies of your purple pomodoro',
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(Insets.xl),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          Insets.l,
                          Insets.xl,
                          Insets.l,
                          0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const StyledTitleAndSubtitle(
                              title: 'Your Pomodoro',
                              subTitle: 'Duration (in minutes)',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                StyledDurationInputTile(
                                  title: 'Focus Time',
                                  minutes: 25,
                                ),
                                StyledDurationInputTile(
                                  title: 'Short Break',
                                  minutes: 5,
                                ),
                                StyledDurationInputTile(
                                  title: 'Long Break',
                                  minutes: 15,
                                ),
                              ],
                            ),
                            const StyledDivider(),
                            Text(
                              'Alarm Sound',
                              style: TextStyles.title1,
                            ),
                            const HSpace(size: Insets.l),
                            const ThemeTile(title: 'Bell'),
                            const StyledDivider(),
                            const ThemeTile(title: 'Digital'),
                            const StyledDivider(),
                            const HSpace(size: Insets.l),
                            const StyledTitleAndSubtitle(
                              title: 'Appearance',
                              subTitle: 'Defaults to system settings',
                            ),
                            const HSpace(size: Insets.m),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Dark Mode',
                                      style: TextStyles.title1,
                                    ),
                                    const StyledCheckBox(),
                                  ],
                                ),
                                const StyledDivider(),
                                Text('Theme', style: TextStyles.title1),
                                const HSpace(size: Insets.l),
                                const ThemeTile(title: 'Purple Pomodoro'),
                                const StyledDivider(),
                                const ThemeTile(title: 'Chelsea Cucumber'),
                                const StyledDivider(),
                                const ThemeTile(
                                  title: 'Cornflower Blue',
                                  themeColor: Color(0xFF6889FF),
                                ),
                                const StyledDivider(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThemeTile extends StatelessWidget {
  const ThemeTile({
    Key? key,
    required this.title,
    this.themeColor = Colors.grey,
  }) : super(key: key);
  final String title;
  //TODO: CHANGE TO THEMETYPE
  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 24,
            minWidth: 24,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: themeColor,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}

class StyledCheckBox extends StatelessWidget {
  const StyledCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: const Color(0xFF6A6DB0),
        borderRadius: BorderRadius.circular(Insets.sm),
      ),
    );
  }
}

class StyledDurationInputTile extends StatelessWidget {
  const StyledDurationInputTile({
    super.key,
    required this.title,
    required this.minutes,
    this.color,
  });

  final int minutes;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StyledCard(
        color: Colors.white,
        paddingInsets: Insets.m,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              minutes.toString(),
              style: TextStyles.h1,
            ),
            const HSpace(size: Insets.m),
            Text(title, style: TextStyles.body1),
          ],
        ),
      ),
    );
  }
}
