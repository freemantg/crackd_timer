import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/tasks_page.dart';

import '../shared/styles.dart';
import 'shared/pomodoro_indicator.dart';

class PlannerPage extends StatelessWidget {
  const PlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF6A6DB0),
        title: const Text('Today\'s Pomodoros'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(Insets.l, Insets.l, Insets.xs, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          PlannerTaskListTile(),
                          PlannerTaskListTile(),
                          PlannerTaskListTile(),
                          PlannerTaskListTile(),
                        ],
                      ),
                    ),
                    const VSpace(size: Insets.m),
                    _buildTimetable(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded _buildTimetable() {
    return Expanded(
      child: Table(
        border: TableBorder.all(
          width: 0.5,
          color: const Color(0xFF9AA0F8),
          borderRadius: BorderRadius.circular(4),
        ),
        columnWidths: const {0: FractionColumnWidth(0.2)},
        children: [
          ...List.generate(
            24,
            (index) => _buildTableRow(index),
          )
        ],
      ),
    );
  }

  _buildTableRow(int timeIndex) => TableRow(children: [
        PlannerCell(text: timeIndex.toString()),
        const PlannerCell(),
        const PlannerCell(),
        const PlannerCell(),
        const PlannerCell(),
        const PlannerCell(),
        const PlannerCell(),
      ]);
}

class PlannerTaskListTile extends StatelessWidget {
  const PlannerTaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      isThreeLine: true,
      dense: true,
      title: Row(
        children: [
          Container(
            color: const Color(0xFFC6B7E0),
            width: 3,
            height: 14.0,
          ),
          const VSpace(size: Insets.sm),
          const Text('A Semi long title'),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Description goes here'),
            const HSpace(size: Insets.sm),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                  4,
                  (index) => const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: PomodoroIndicator(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PlannerCell extends StatelessWidget {
  const PlannerCell({
    Key? key,
    this.text = '',
    this.color,
  }) : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.sm),
      alignment: Alignment.center,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11.0,
          color: Color(0xFF6A6DB0),
        ),
      ),
    );
  }
}
