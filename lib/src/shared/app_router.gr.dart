// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:crackd_timer/src/domain/tasks/task.dart' as _i8;
import 'package:crackd_timer/src/presentation/add_task/add_task_page.dart'
    as _i1;
import 'package:crackd_timer/src/presentation/home/home_page.dart' as _i2;
import 'package:crackd_timer/src/presentation/settings/settings_page.dart'
    as _i3;
import 'package:crackd_timer/src/presentation/tasks/tasks_page.dart' as _i4;
import 'package:crackd_timer/src/presentation/timer/timer_page.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AddTaskRoute.name: (routeData) {
      final args = routeData.argsAs<AddTaskRouteArgs>(
          orElse: () => const AddTaskRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTaskPage(
          key: args.key,
          task: args.task,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    TasksRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TasksPage(),
      );
    },
    TimerRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TimerPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTaskPage]
class AddTaskRoute extends _i6.PageRouteInfo<AddTaskRouteArgs> {
  AddTaskRoute({
    _i7.Key? key,
    _i8.Task? task,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AddTaskRoute.name,
          args: AddTaskRouteArgs(
            key: key,
            task: task,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTaskRoute';

  static const _i6.PageInfo<AddTaskRouteArgs> page =
      _i6.PageInfo<AddTaskRouteArgs>(name);
}

class AddTaskRouteArgs {
  const AddTaskRouteArgs({
    this.key,
    this.task,
  });

  final _i7.Key? key;

  final _i8.Task? task;

  @override
  String toString() {
    return 'AddTaskRouteArgs{key: $key, task: $task}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TasksPage]
class TasksRoute extends _i6.PageRouteInfo<void> {
  const TasksRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TimerPage]
class TimerRoute extends _i6.PageRouteInfo<void> {
  const TimerRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TimerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
