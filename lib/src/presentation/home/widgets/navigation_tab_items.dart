import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum NavigationBarItem {
  list,
  timer,
  settings,
}

const Map<NavigationBarItem, IconData> barItemIcon = {
  NavigationBarItem.list: FontAwesomeIcons.list,
  NavigationBarItem.timer: FontAwesomeIcons.stopwatch,
  NavigationBarItem.settings: FontAwesomeIcons.gear,
};
