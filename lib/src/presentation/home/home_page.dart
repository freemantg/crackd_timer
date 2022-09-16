import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/home/widgets/navigation_tab_items.dart';
import 'package:robot_timer/src/shared/app_router.gr.dart';

import 'widgets/styled_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        TasksRoute(),
        TimerRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) =>
          StyledBottomNavigationBar(
        index: tabsRouter.activeIndex,
        activeBarItem: NavigationBarItem.values[tabsRouter.activeIndex],
        onTap: (index) => tabsRouter.setActiveIndex(index),
      ),
    );
  }
}
