// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchCompletedStarted,
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)
        tasksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchCompletedStarted,
    TResult? Function()? watchActiveStarted,
    TResult? Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchCompletedStarted,
    TResult Function()? watchActiveStarted,
    TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchCompletedStarted value)
        watchCompletedStarted,
    required TResult Function(_WatchActiveStarted value) watchActiveStarted,
    required TResult Function(_TasksRecieved value) tasksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult? Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(_TasksRecieved value)? tasksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult Function(_TasksRecieved value)? tasksReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherEventCopyWith<$Res> {
  factory $TaskWatcherEventCopyWith(
          TaskWatcherEvent value, $Res Function(TaskWatcherEvent) then) =
      _$TaskWatcherEventCopyWithImpl<$Res, TaskWatcherEvent>;
}

/// @nodoc
class _$TaskWatcherEventCopyWithImpl<$Res, $Val extends TaskWatcherEvent>
    implements $TaskWatcherEventCopyWith<$Res> {
  _$TaskWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'TaskWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchCompletedStarted,
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)
        tasksReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchCompletedStarted,
    TResult? Function()? watchActiveStarted,
    TResult? Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchCompletedStarted,
    TResult Function()? watchActiveStarted,
    TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchCompletedStarted value)
        watchCompletedStarted,
    required TResult Function(_WatchActiveStarted value) watchActiveStarted,
    required TResult Function(_TasksRecieved value) tasksReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult? Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(_TasksRecieved value)? tasksReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult Function(_TasksRecieved value)? tasksReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TaskWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_WatchCompletedStartedCopyWith<$Res> {
  factory _$$_WatchCompletedStartedCopyWith(_$_WatchCompletedStarted value,
          $Res Function(_$_WatchCompletedStarted) then) =
      __$$_WatchCompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchCompletedStartedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res, _$_WatchCompletedStarted>
    implements _$$_WatchCompletedStartedCopyWith<$Res> {
  __$$_WatchCompletedStartedCopyWithImpl(_$_WatchCompletedStarted _value,
      $Res Function(_$_WatchCompletedStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchCompletedStarted implements _WatchCompletedStarted {
  const _$_WatchCompletedStarted();

  @override
  String toString() {
    return 'TaskWatcherEvent.watchCompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchCompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchCompletedStarted,
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)
        tasksReceived,
  }) {
    return watchCompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchCompletedStarted,
    TResult? Function()? watchActiveStarted,
    TResult? Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
  }) {
    return watchCompletedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchCompletedStarted,
    TResult Function()? watchActiveStarted,
    TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
    required TResult orElse(),
  }) {
    if (watchCompletedStarted != null) {
      return watchCompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchCompletedStarted value)
        watchCompletedStarted,
    required TResult Function(_WatchActiveStarted value) watchActiveStarted,
    required TResult Function(_TasksRecieved value) tasksReceived,
  }) {
    return watchCompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult? Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(_TasksRecieved value)? tasksReceived,
  }) {
    return watchCompletedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult Function(_TasksRecieved value)? tasksReceived,
    required TResult orElse(),
  }) {
    if (watchCompletedStarted != null) {
      return watchCompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchCompletedStarted implements TaskWatcherEvent {
  const factory _WatchCompletedStarted() = _$_WatchCompletedStarted;
}

/// @nodoc
abstract class _$$_WatchActiveStartedCopyWith<$Res> {
  factory _$$_WatchActiveStartedCopyWith(_$_WatchActiveStarted value,
          $Res Function(_$_WatchActiveStarted) then) =
      __$$_WatchActiveStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchActiveStartedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res, _$_WatchActiveStarted>
    implements _$$_WatchActiveStartedCopyWith<$Res> {
  __$$_WatchActiveStartedCopyWithImpl(
      _$_WatchActiveStarted _value, $Res Function(_$_WatchActiveStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchActiveStarted implements _WatchActiveStarted {
  const _$_WatchActiveStarted();

  @override
  String toString() {
    return 'TaskWatcherEvent.watchActiveStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchActiveStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchCompletedStarted,
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)
        tasksReceived,
  }) {
    return watchActiveStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchCompletedStarted,
    TResult? Function()? watchActiveStarted,
    TResult? Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
  }) {
    return watchActiveStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchCompletedStarted,
    TResult Function()? watchActiveStarted,
    TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
    required TResult orElse(),
  }) {
    if (watchActiveStarted != null) {
      return watchActiveStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchCompletedStarted value)
        watchCompletedStarted,
    required TResult Function(_WatchActiveStarted value) watchActiveStarted,
    required TResult Function(_TasksRecieved value) tasksReceived,
  }) {
    return watchActiveStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult? Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(_TasksRecieved value)? tasksReceived,
  }) {
    return watchActiveStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult Function(_TasksRecieved value)? tasksReceived,
    required TResult orElse(),
  }) {
    if (watchActiveStarted != null) {
      return watchActiveStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchActiveStarted implements TaskWatcherEvent {
  const factory _WatchActiveStarted() = _$_WatchActiveStarted;
}

/// @nodoc
abstract class _$$_TasksRecievedCopyWith<$Res> {
  factory _$$_TasksRecievedCopyWith(
          _$_TasksRecieved value, $Res Function(_$_TasksRecieved) then) =
      __$$_TasksRecievedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<TaskFailure, List<Task>> failureOrTasks});
}

/// @nodoc
class __$$_TasksRecievedCopyWithImpl<$Res>
    extends _$TaskWatcherEventCopyWithImpl<$Res, _$_TasksRecieved>
    implements _$$_TasksRecievedCopyWith<$Res> {
  __$$_TasksRecievedCopyWithImpl(
      _$_TasksRecieved _value, $Res Function(_$_TasksRecieved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrTasks = null,
  }) {
    return _then(_$_TasksRecieved(
      null == failureOrTasks
          ? _value.failureOrTasks
          : failureOrTasks // ignore: cast_nullable_to_non_nullable
              as Either<TaskFailure, List<Task>>,
    ));
  }
}

/// @nodoc

class _$_TasksRecieved implements _TasksRecieved {
  const _$_TasksRecieved(this.failureOrTasks);

  @override
  final Either<TaskFailure, List<Task>> failureOrTasks;

  @override
  String toString() {
    return 'TaskWatcherEvent.tasksReceived(failureOrTasks: $failureOrTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksRecieved &&
            (identical(other.failureOrTasks, failureOrTasks) ||
                other.failureOrTasks == failureOrTasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrTasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksRecievedCopyWith<_$_TasksRecieved> get copyWith =>
      __$$_TasksRecievedCopyWithImpl<_$_TasksRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchCompletedStarted,
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)
        tasksReceived,
  }) {
    return tasksReceived(failureOrTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchCompletedStarted,
    TResult? Function()? watchActiveStarted,
    TResult? Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
  }) {
    return tasksReceived?.call(failureOrTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchCompletedStarted,
    TResult Function()? watchActiveStarted,
    TResult Function(Either<TaskFailure, List<Task>> failureOrTasks)?
        tasksReceived,
    required TResult orElse(),
  }) {
    if (tasksReceived != null) {
      return tasksReceived(failureOrTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchCompletedStarted value)
        watchCompletedStarted,
    required TResult Function(_WatchActiveStarted value) watchActiveStarted,
    required TResult Function(_TasksRecieved value) tasksReceived,
  }) {
    return tasksReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult? Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(_TasksRecieved value)? tasksReceived,
  }) {
    return tasksReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchCompletedStarted value)? watchCompletedStarted,
    TResult Function(_WatchActiveStarted value)? watchActiveStarted,
    TResult Function(_TasksRecieved value)? tasksReceived,
    required TResult orElse(),
  }) {
    if (tasksReceived != null) {
      return tasksReceived(this);
    }
    return orElse();
  }
}

abstract class _TasksRecieved implements TaskWatcherEvent {
  const factory _TasksRecieved(
      final Either<TaskFailure, List<Task>> failureOrTasks) = _$_TasksRecieved;

  Either<TaskFailure, List<Task>> get failureOrTasks;
  @JsonKey(ignore: true)
  _$$_TasksRecievedCopyWith<_$_TasksRecieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasks) loadSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasks)? loadSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasks)? loadSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskWatcherStateCopyWith<$Res> {
  factory $TaskWatcherStateCopyWith(
          TaskWatcherState value, $Res Function(TaskWatcherState) then) =
      _$TaskWatcherStateCopyWithImpl<$Res, TaskWatcherState>;
}

/// @nodoc
class _$TaskWatcherStateCopyWithImpl<$Res, $Val extends TaskWatcherState>
    implements $TaskWatcherStateCopyWith<$Res> {
  _$TaskWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TaskWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasks) loadSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasks)? loadSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasks)? loadSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TaskWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasks) loadSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasks)? loadSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasks)? loadSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TaskWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_LoadSuccess(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({required final List<Task> tasks}) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskWatcherState.loadSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasks) loadSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return loadSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasks)? loadSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return loadSuccess?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasks)? loadSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TaskWatcherState {
  const factory _LoadSuccess({required final List<Task> tasks}) =
      _$_LoadSuccess;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFailure taskFailure});

  $TaskFailureCopyWith<$Res> get taskFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$TaskWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskFailure = null,
  }) {
    return _then(_$_LoadFailure(
      taskFailure: null == taskFailure
          ? _value.taskFailure
          : taskFailure // ignore: cast_nullable_to_non_nullable
              as TaskFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFailureCopyWith<$Res> get taskFailure {
    return $TaskFailureCopyWith<$Res>(_value.taskFailure, (value) {
      return _then(_value.copyWith(taskFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure({required this.taskFailure});

  @override
  final TaskFailure taskFailure;

  @override
  String toString() {
    return 'TaskWatcherState.loadFailure(taskFailure: $taskFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.taskFailure, taskFailure) ||
                other.taskFailure == taskFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Task> tasks) loadSuccess,
    required TResult Function(TaskFailure taskFailure) loadFailure,
  }) {
    return loadFailure(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Task> tasks)? loadSuccess,
    TResult? Function(TaskFailure taskFailure)? loadFailure,
  }) {
    return loadFailure?.call(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Task> tasks)? loadSuccess,
    TResult Function(TaskFailure taskFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(taskFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TaskWatcherState {
  const factory _LoadFailure({required final TaskFailure taskFailure}) =
      _$_LoadFailure;

  TaskFailure get taskFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
