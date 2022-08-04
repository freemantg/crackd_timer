import 'package:auto_route/annotations.dart';
import 'package:robot_timer/src/presentation/add_task_page.dart';
import 'package:robot_timer/src/presentation/settings_page.dart';
import 'package:robot_timer/src/presentation/stats_page.dart';
import 'package:robot_timer/src/presentation/task_timer.dart';
import 'package:robot_timer/src/presentation/tasks_page.dart';

import '../presentation/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
      children: [
        AutoRoute(page: TasksPage),
        AutoRoute(page: TaskTimerPage),
        AutoRoute(page: StatsPage),
        AutoRoute(page: SettingsPage),
        AutoRoute(page: AddTaskPage)
      ],
    ),
  ],
)
class $AppRouter {}
