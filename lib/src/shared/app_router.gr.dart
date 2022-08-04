// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../presentation/add_task_page.dart' as _i6;
import '../presentation/home_page.dart' as _i1;
import '../presentation/settings_page.dart' as _i5;
import '../presentation/stats_page.dart' as _i4;
import '../presentation/task_timer.dart' as _i3;
import '../presentation/tasks_page.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    TasksRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TasksPage());
    },
    TaskTimerRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TaskTimerPage());
    },
    StatsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.StatsPage());
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    },
    AddTaskRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AddTaskPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/', children: [
          _i7.RouteConfig(TasksRoute.name,
              path: 'tasks-page', parent: HomeRoute.name),
          _i7.RouteConfig(TaskTimerRoute.name,
              path: 'task-timer-page', parent: HomeRoute.name),
          _i7.RouteConfig(StatsRoute.name,
              path: 'stats-page', parent: HomeRoute.name),
          _i7.RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: HomeRoute.name),
          _i7.RouteConfig(AddTaskRoute.name,
              path: 'add-task-page', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.TasksPage]
class TasksRoute extends _i7.PageRouteInfo<void> {
  const TasksRoute() : super(TasksRoute.name, path: 'tasks-page');

  static const String name = 'TasksRoute';
}

/// generated route for
/// [_i3.TaskTimerPage]
class TaskTimerRoute extends _i7.PageRouteInfo<void> {
  const TaskTimerRoute() : super(TaskTimerRoute.name, path: 'task-timer-page');

  static const String name = 'TaskTimerRoute';
}

/// generated route for
/// [_i4.StatsPage]
class StatsRoute extends _i7.PageRouteInfo<void> {
  const StatsRoute() : super(StatsRoute.name, path: 'stats-page');

  static const String name = 'StatsRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i6.AddTaskPage]
class AddTaskRoute extends _i7.PageRouteInfo<void> {
  const AddTaskRoute() : super(AddTaskRoute.name, path: 'add-task-page');

  static const String name = 'AddTaskRoute';
}
