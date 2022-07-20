import 'package:auto_route/annotations.dart';
import 'package:robot_timer/src/presentation/timer_page.dart';

@MaterialAutoRouter(
  routes: [AutoRoute(page: TimerPage, initial: true)],
)
class $AppRouter {}
