// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../domain/tasks/task.dart' as _i8;
import '../presentation/add_task/add_task_page.dart' as _i2;
import '../presentation/home/home_page.dart' as _i1;
import '../presentation/settings/settings_page.dart' as _i5;
import '../presentation/tasks/tasks_page.dart' as _i3;
import '../presentation/timer/timer_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    AddTaskRoute.name: (routeData) {
      final args = routeData.argsAs<AddTaskRouteArgs>(
          orElse: () => const AddTaskRouteArgs());
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.AddTaskPage(key: args.key, task: args.task),
          opaque: true,
          barrierDismissible: false);
    },
    TasksRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.TasksPage(),
          opaque: true,
          barrierDismissible: false);
    },
    TimerRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.TimerPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SettingsPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/', children: [
          _i6.RouteConfig(TasksRoute.name,
              path: 'tasks-page', parent: HomeRoute.name),
          _i6.RouteConfig(TimerRoute.name,
              path: 'timer-page', parent: HomeRoute.name),
          _i6.RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: HomeRoute.name)
        ]),
        _i6.RouteConfig(AddTaskRoute.name, path: '/add-task-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AddTaskPage]
class AddTaskRoute extends _i6.PageRouteInfo<AddTaskRouteArgs> {
  AddTaskRoute({_i7.Key? key, _i8.Task? task})
      : super(AddTaskRoute.name,
            path: '/add-task-page',
            args: AddTaskRouteArgs(key: key, task: task));

  static const String name = 'AddTaskRoute';
}

class AddTaskRouteArgs {
  const AddTaskRouteArgs({this.key, this.task});

  final _i7.Key? key;

  final _i8.Task? task;

  @override
  String toString() {
    return 'AddTaskRouteArgs{key: $key, task: $task}';
  }
}

/// generated route for
/// [_i3.TasksPage]
class TasksRoute extends _i6.PageRouteInfo<void> {
  const TasksRoute() : super(TasksRoute.name, path: 'tasks-page');

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i4.TimerPage]
class TimerRoute extends _i6.PageRouteInfo<void> {
  const TimerRoute() : super(TimerRoute.name, path: 'timer-page');

  static const String name = 'TimerRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}
