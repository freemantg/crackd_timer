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

  Center _buildScaffoldBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Insets.lGutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CurrentTaskTile(),
            const HSpace(size: Insets.m),
            Row(
              children: const [
                Expanded(
                    child: ProgressTile(
                  color: Color(0xFFFBE0D7),
                  title: 'In-progress',
                  currentFigure: 10,
                  overallFigure: 20,
                )),
                VSpace(size: Insets.m),
                Expanded(
                    child: ProgressTile(
                  color: Color(0xFFCBEFED),
                  title: 'Completed',
                  currentFigure: 15,
                  overallFigure: 50,
                )),
              ],
            ),
            const HSpace(size: Insets.l),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Daily Tasks",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text('See all'))
              ],
            ),
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
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.l),
        child: child,
      ),
    );
  }
}
