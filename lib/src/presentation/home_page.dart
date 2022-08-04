import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:robot_timer/src/shared/app_router.gr.dart';

import 'shared/styled_components/styled_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        TasksRoute(),
        TaskTimerRoute(),
        StatsRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) =>
          const StyledBottomNavigationBar(),
    );
  }
}
