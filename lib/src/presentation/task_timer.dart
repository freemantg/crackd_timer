import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/settings_page.dart';

import '../shared/styles.dart';
import 'shared/pomodoro_indicator.dart';
import 'shared/styled_components/styled_app_bar.dart';

import 'shared/styled_components/styled_divider.dart';
import 'shared/styled_components/styled_title_subTitle.dart';
import 'shared/styled_components/styled_title_text.dart';
import 'shared/text_styles.dart';

class TaskTimerPage extends StatelessWidget {
  const TaskTimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A6DB0),
      appBar: StyledAppBar(
        action: IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(child: TimerTextDisplay()),
              Expanded(flex: 2, child: PomodoroTimerDisplay()),
            ],
          );
        },
      ),
    );
  }
}

class PomodoroTimerDisplay extends StatelessWidget {
  const PomodoroTimerDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12:58',
                  style: TextStyles.h1.copyWith(fontSize: 64.0),
                ),
                const HSpace(size: Insets.l),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.history,
                          size: 38,
                          color: Color(0xFF787AB9),
                        )),
                    const TimerMainActionButton(radius: 64.0, iconSize: 38),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_next,
                        size: 38,
                        color: Color(0xFF787AB9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const HSpace(size: Insets.m),
            const StyledDivider(),
            Row(
              children: const [
                StyledCheckBox(),
                VSpace(size: Insets.l),
                StyledTitleAndSubtitle(
                  title: 'Complete App',
                  subTitle: 'Add theming and stuff to my app',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TimerTextDisplay extends StatelessWidget {
  const TimerTextDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledTitleAndText(
          title: 'Pomodoro',
          text: 'Time to focus!',
          textAlign: TextAlign.center,
        ),
        const HSpace(size: Insets.m),
        SizedBox(
          height: 10,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, index) => const VSpace(size: Insets.m),
            itemBuilder: (context, index) => const PomodoroIndicator(),
          ),
        ),
      ],
    );
  }
}

class TimerMainActionButton extends StatelessWidget {
  const TimerMainActionButton({
    Key? key,
    this.iconSize = 24,
    this.radius = 48,
    this.isPlaying = false,
  }) : super(key: key);

  final double iconSize;
  final double radius;
  final bool isPlaying;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFDDD9FE),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.sm),
        child: SizedBox(
          width: radius,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF6A6DB0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.pause,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
