import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles.dart';
import 'navigation_tab_items.dart';

class StyledBottomNavigationBar extends StatelessWidget {
  const StyledBottomNavigationBar({
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
          borderRadius: BorderRadius.circular(Corners.s10),
          elevation: Elevation.card,
          color: theme.colorScheme.surface,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ...NavigationBarItem.values
                      .map((e) => _StyledBottomNavigationBarItem(
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
                      color: theme.cardColor.withOpacity(0.3),
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

class _StyledBottomNavigationBarItem extends StatelessWidget {
  final NavigationBarItem barItem;
  final NavigationBarItem activeBarItem;
  final void Function(int index) onTap;

  const _StyledBottomNavigationBarItem({
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
        padding: const EdgeInsets.all(8.0),
        child: FaIcon(
          barItemIcon[barItem],
          color: (barItem == activeBarItem)
              ? theme.colorScheme.primary
              : theme.colorScheme.secondary,
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
