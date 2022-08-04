import 'package:flutter/material.dart';
import 'package:robot_timer/src/shared/styles.dart';

import 'shared/pomodoro_indicator.dart';
import 'shared/styled_components/styled_card.dart';
import 'shared/styled_components/styled_filter_switcher.dart';
import 'shared/styled_components/styled_task_tile.dart';

import 'shared/styled_components/styled_title_text.dart';
import 'shared/text_styles.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScaffoldBody(context),
      backgroundColor: const Color(0xFF6A6DB0),
    );
  }

  Widget _buildScaffoldBody(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const HSpace(size: Insets.xl),
                GestureDetector(
                  onTap: () => context,
                  child: const CircleAvatar(
                      radius: 40, backgroundColor: Colors.white),
                ),
                const HSpace(size: Insets.m),
                const StyledTitleAndText(
                  textAlign: TextAlign.center,
                  title: 'Your Pomodoros',
                  text: 'It is pomodoro-ble',
                ),
                const HSpace(size: Insets.xl),
                const StyledFilterSwitcher(),
              ],
            ),
            const HSpace(size: Insets.l),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const CustomTaskListTile();
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.all(Insets.m),
      child: const Icon(Icons.timer, color: Colors.white),
    );
  }
}

class CurrentTaskTile extends StatelessWidget {
  const CurrentTaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Short Break', style: TextStyles.body2),
              const HSpace(size: Insets.sm),
              Text(
                '05:00',
                style: TextStyles.h1,
              ),
              const HSpace(size: Insets.sm),
              SizedBox(
                height: 10,
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const VSpace(size: Insets.sm),
                  itemBuilder: (context, index) {
                    return const PomodoroIndicator(isComplete: true);
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
