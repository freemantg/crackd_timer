import 'package:auto_route/auto_route.dart';
import 'package:robot_timer/src/presentation/add_task/add_task_page.dart';
import 'package:robot_timer/src/presentation/home/home_page.dart';
import 'package:robot_timer/src/presentation/settings/settings_page.dart';
import 'package:robot_timer/src/presentation/timer/timer_page.dart';

import '../presentation/tasks/tasks_page.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(page: TasksPage),
        AutoRoute(page: TimerPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
    AutoRoute(page: AddTaskPage),
  ],
)
class $AppRouter {}
