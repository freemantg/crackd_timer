import 'package:flutter/material.dart';
import 'package:robot_timer/src/shared/styles.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildScaffoldBody(),
    );
  }

  Widget _buildScaffoldBody() {
    return Padding(
      padding: EdgeInsets.all(Insets.lGutter),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CurrentTaskTile(),
            const HSpace(size: Insets.m),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Daily Insights",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text('See more')),
              ],
            ),
            const DailyInsightsWidget(),
            const HSpace(size: Insets.xl),
            const Text(
              "Tasks",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListView.separated(
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(),
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return const TaskListTile();
              }),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF6A6DB0),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.calendar_month),
      ),
      title: const Text('Today'),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        )
      ],
    );
  }
}

class DailyInsightsWidget extends StatelessWidget {
  const DailyInsightsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: [
          StyledCard(
            color: const Color(0xFFFBE0D7),
            paddingInsets: Insets.m,
            child: SizedBox(
              width: 100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.pending_actions,
                    color: Color(0xFFEF835F),
                  ),
                  HSpace(size: Insets.sm),
                  Text(
                    'Ongoing',
                    style: TextStyle(
                      color: Color(0xFFEF835F),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  HSpace(size: Insets.m),
                  Text(
                    '5/10',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  HSpace(size: Insets.m),
                  LinearProgressIndicator(value: 0.5),
                  HSpace(size: Insets.m),
                  Text(
                    'Est: 4hr',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          const VSpace(size: Insets.m),
          StyledCard(
            color: const Color(0xFFCBEFED),
            paddingInsets: Insets.m,
            child: SizedBox(
              width: 100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.check_circle,
                    color: Color(0xFF419A9E),
                  ),
                  HSpace(size: Insets.sm),
                  Text(
                    'Completed',
                    style: TextStyle(
                      color: Color(0xFF419A9E),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  HSpace(size: Insets.m),
                  Text(
                    '5/10',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  HSpace(size: Insets.m),
                  LinearProgressIndicator(value: 0.5),
                  HSpace(size: Insets.m),
                  Text(
                    'Est: 4hr',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          const VSpace(size: Insets.m),
          StyledCard(
            color: const Color(0xFFFEF1D5),
            paddingInsets: Insets.m,
            child: SizedBox(
              width: 100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.view_week,
                    color: Color(0xFFDE9C32),
                  ),
                  const HSpace(size: Insets.sm),
                  const Text(
                    'Weekly Total',
                    style: TextStyle(
                      color: Color(0xFFDE9C32),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const HSpace(size: Insets.m),
                  const Text(
                    '5 hr 10m',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  const HSpace(size: Insets.sm),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(Insets.xs),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFDDEDF),
                        ),
                        child: const Icon(
                          Icons.arrow_downward,
                          size: 12,
                          color: Colors.red,
                        ),
                      ),
                      const VSpace(size: Insets.sm),
                      const Text(
                        '-7.31%',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  const HSpace(size: Insets.sm),
                  const Text(
                    '20/07 - ',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Checkbox(
        activeColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        value: true,
        onChanged: (value) {},
      ),
      title: const Text('Pomodoro Mobile App'),
      trailing: const Text(
        '0/4',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
      ),
    );
  }
}

class ProgressTile extends StatelessWidget {
  const ProgressTile({
    Key? key,
    required this.title,
    required this.color,
    required this.currentFigure,
    required this.overallFigure,
  }) : super(key: key);

  final String title;
  final Color color;
  final int currentFigure;
  final int overallFigure;

  @override
  Widget build(BuildContext context) {
    return StyledCard(
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const HSpace(size: Insets.sm),
            Text(
              '$currentFigure/$overallFigure',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const HSpace(size: Insets.m),
            LinearProgressIndicator(value: currentFigure / overallFigure),
          ],
        ));
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
              const Text('Short Break', style: TextStyle(color: Colors.grey)),
              const HSpace(size: Insets.sm),
              const Text(
                '0:05:00',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const HSpace(size: Insets.sm),
              SizedBox(
                height: 10,
                child: ListView.separated(
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
          const TimerMainActionButton(),
        ],
      ),
    );
  }
}

class PomodoroIndicator extends StatelessWidget {
  const PomodoroIndicator({
    Key? key,
    this.isComplete = false,
  }) : super(key: key);

  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isComplete ? const Color(0xFF6A6DB0) : const Color(0xFFDDD9FE),
      ),
      height: 8,
      width: 8,
    );
  }
}

class TimerMainActionButton extends StatelessWidget {
  const TimerMainActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFDDD9FE),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.sm),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF6A6DB0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.pause,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class StyledCard extends StatelessWidget {
  const StyledCard({
    super.key,
    required this.child,
    this.color = const Color(0xFFE1E5FF),
    this.paddingInsets = Insets.l,
  });

  final Widget child;
  final Color color;
  final double paddingInsets;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.all(paddingInsets),
        child: child,
      ),
    );
  }
}
