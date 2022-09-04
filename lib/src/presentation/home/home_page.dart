import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/home/widgets/navigation_tab_items.dart';
import 'package:robot_timer/src/shared/app_router.gr.dart';
import 'package:robot_timer/src/shared/styles.dart';

import '../shared/styled_components/styled_bottom_navigation_bar.dart';

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
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        index: tabsRouter.activeIndex,
        activeBarItem: NavigationBarItem.values[tabsRouter.activeIndex],
        onTap: (index) => tabsRouter.setActiveIndex(index),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
    required this.activeBarItem,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final NavigationBarItem activeBarItem;
  final void Function(int) onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.symmetric(
          vertical: Insets.l,
          horizontal: constraints.maxWidth / 4,
        ),
        child: Material(
          elevation: 8.0,
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(Corners.s10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ...NavigationBarItem.values
                      .map((e) => StyledBottomNavigationBarItem(
                            barItem: e,
                            activeBarItem: activeBarItem,
                            onTap: (index) => onTap(index),
                          ))
                      .toList()
                ],
              ),
              Positioned.fill(
                child: AnimatedAlign(
                  duration: kThemeAnimationDuration,
                  alignment: _buildAlignment(index)!,
                  child: Container(
                    width: constraints.maxWidth / 6,
                    height: 48,
                    decoration: BoxDecoration(
                      color: theme.primaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(Corners.s10),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Alignment? _buildAlignment(int index) {
  switch (index) {
    case 0:
      return Alignment.centerLeft;
    case 1:
      return Alignment.center;
    case 2:
      return Alignment.centerRight;
  }
  return null;
}
