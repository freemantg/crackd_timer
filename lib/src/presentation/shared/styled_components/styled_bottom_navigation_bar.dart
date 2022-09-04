import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles.dart';
import '../../home/widgets/navigation_tab_items.dart';

class StyledBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const StyledBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        StyledBottomAppBarIcons(
          onTap: (index) => onTap(index),
          activeBarItem: NavigationBarItem.values[currentIndex],
        ),
      ],
    );
  }
}

class StyledBottomAppBarIcons extends StatelessWidget {
  const StyledBottomAppBarIcons({
    Key? key,
    required this.onTap,
    required this.activeBarItem,
  }) : super(key: key);

  final void Function(int) onTap;
  final NavigationBarItem activeBarItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 30.0),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
        child: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.m,
              horizontal: Insets.sm,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: NavigationBarItem.values
                  .map(
                    (e) => StyledBottomNavigationBarItem(
                      barItem: e,
                      onTap: (index) => onTap(index),
                      activeBarItem: activeBarItem,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class StyledBottomNavigationBarItem extends StatelessWidget {
  final NavigationBarItem barItem;
  final NavigationBarItem activeBarItem;
  final void Function(int index) onTap;

  const StyledBottomNavigationBarItem({
    super.key,
    required this.barItem,
    required this.activeBarItem,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onTap(barItem.index),
      child: Padding(
        padding: const EdgeInsets.all(Insets.m),
        child: FaIcon(
          barItemIcon[barItem],
          size: 22.0,
          color: (barItem == activeBarItem)
              ? theme.colorScheme.primary
              : theme.hintColor,
        ),
      ),
    );
  }
}
