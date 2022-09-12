// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) deleted,
    required TResult Function(Task task) completeToggled,
    required TResult Function(Task task) incrementPomodoro,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_CompleteToggled value) completeToggled,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_Updated value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActorEventCopyWith<$Res> {
  factory $TaskActorEventCopyWith(
          TaskActorEvent value, $Res Function(TaskActorEvent) then) =
      _$TaskActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskActorEventCopyWithImpl<$Res>
    implements $TaskActorEventCopyWith<$Res> {
  _$TaskActorEventCopyWithImpl(this._value, this._then);

  final TaskActorEvent _value;
  // ignore: unused_field
  final $Res Function(TaskActorEvent) _then;
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, (v) => _then(v as _$_Deleted));

  @override
  _$_Deleted get _value => super._value as _$_Deleted;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_Deleted(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.deleted(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) deleted,
    required TResult Function(Task task) completeToggled,
    required TResult Function(Task task) incrementPomodoro,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        update,
  }) {
    return deleted(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
  }) {
    return deleted?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_CompleteToggled value) completeToggled,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_Updated value) update,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TaskActorEvent {
  const factory _Deleted(final Task task) = _$_Deleted;

  Task get task;
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteToggledCopyWith<$Res> {
  factory _$$_CompleteToggledCopyWith(
          _$_CompleteToggled value, $Res Function(_$_CompleteToggled) then) =
      __$$_CompleteToggledCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_CompleteToggledCopyWithImpl<$Res>
    extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$$_CompleteToggledCopyWith<$Res> {
  __$$_CompleteToggledCopyWithImpl(
      _$_CompleteToggled _value, $Res Function(_$_CompleteToggled) _then)
      : super(_value, (v) => _then(v as _$_CompleteToggled));

  @override
  _$_CompleteToggled get _value => super._value as _$_CompleteToggled;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_CompleteToggled(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_CompleteToggled implements _CompleteToggled {
  const _$_CompleteToggled(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.completeToggled(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteToggled &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_CompleteToggledCopyWith<_$_CompleteToggled> get copyWith =>
      __$$_CompleteToggledCopyWithImpl<_$_CompleteToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) deleted,
    required TResult Function(Task task) completeToggled,
    required TResult Function(Task task) incrementPomodoro,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        update,
  }) {
    return completeToggled(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
  }) {
    return completeToggled?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
    required TResult orElse(),
  }) {
    if (completeToggled != null) {
      return completeToggled(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_CompleteToggled value) completeToggled,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_Updated value) update,
  }) {
    return completeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
  }) {
    return completeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
    required TResult orElse(),
  }) {
    if (completeToggled != null) {
      return completeToggled(this);
    }
    return orElse();
  }
}

abstract class _CompleteToggled implements TaskActorEvent {
  const factory _CompleteToggled(final Task task) = _$_CompleteToggled;

  Task get task;
  @JsonKey(ignore: true)
  _$$_CompleteToggledCopyWith<_$_CompleteToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncrementPomodoroCopyWith<$Res> {
  factory _$$_IncrementPomodoroCopyWith(_$_IncrementPomodoro value,
          $Res Function(_$_IncrementPomodoro) then) =
      __$$_IncrementPomodoroCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_IncrementPomodoroCopyWithImpl<$Res>
    extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$$_IncrementPomodoroCopyWith<$Res> {
  __$$_IncrementPomodoroCopyWithImpl(
      _$_IncrementPomodoro _value, $Res Function(_$_IncrementPomodoro) _then)
      : super(_value, (v) => _then(v as _$_IncrementPomodoro));

  @override
  _$_IncrementPomodoro get _value => super._value as _$_IncrementPomodoro;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_IncrementPomodoro(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_IncrementPomodoro implements _IncrementPomodoro {
  const _$_IncrementPomodoro(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskActorEvent.incrementPomodoro(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncrementPomodoro &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_IncrementPomodoroCopyWith<_$_IncrementPomodoro> get copyWith =>
      __$$_IncrementPomodoroCopyWithImpl<_$_IncrementPomodoro>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) deleted,
    required TResult Function(Task task) completeToggled,
    required TResult Function(Task task) incrementPomodoro,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        update,
  }) {
    return incrementPomodoro(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
  }) {
    return incrementPomodoro?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
    required TResult orElse(),
  }) {
    if (incrementPomodoro != null) {
      return incrementPomodoro(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_CompleteToggled value) completeToggled,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_Updated value) update,
  }) {
    return incrementPomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
  }) {
    return incrementPomodoro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
    required TResult orElse(),
  }) {
    if (incrementPomodoro != null) {
      return incrementPomodoro(this);
    }
    return orElse();
  }
}

abstract class _IncrementPomodoro implements TaskActorEvent {
  const factory _IncrementPomodoro(final Task task) = _$_IncrementPomodoro;

  Task get task;
  @JsonKey(ignore: true)
  _$$_IncrementPomodoroCopyWith<_$_IncrementPomodoro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatedCopyWith<$Res> {
  factory _$$_UpdatedCopyWith(
          _$_Updated value, $Res Function(_$_Updated) then) =
      __$$_UpdatedCopyWithImpl<$Res>;
  $Res call({Either<TaskFailure, Unit> failureOrSuccess});
}

/// @nodoc
class __$$_UpdatedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$$_UpdatedCopyWith<$Res> {
  __$$_UpdatedCopyWithImpl(_$_Updated _value, $Res Function(_$_Updated) _then)
      : super(_value, (v) => _then(v as _$_Updated));

  @override
  _$_Updated get _value => super._value as _$_Updated;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_$_Updated(
      failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<TaskFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_Updated implements _Updated {
  const _$_Updated(this.failureOrSuccess);

  @override
  final Either<TaskFailure, Unit> failureOrSuccess;

  @override
  String toString() {
    return 'TaskActorEvent.update(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Updated &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatedCopyWith<_$_Updated> get copyWith =>
      __$$_UpdatedCopyWithImpl<_$_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) deleted,
    required TResult Function(Task task) completeToggled,
    required TResult Function(Task task) incrementPomodoro,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        update,
  }) {
    return update(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
  }) {
    return update?.call(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? deleted,
    TResult Function(Task task)? completeToggled,
    TResult Function(Task task)? incrementPomodoro,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_CompleteToggled value) completeToggled,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_Updated value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_CompleteToggled value)? completeToggled,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_Updated value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Updated implements TaskActorEvent {
  const factory _Updated(final Either<TaskFailure, Unit> failureOrSuccess) =
      _$_Updated;

  Either<TaskFailure, Unit> get failureOrSuccess;
  @JsonKey(ignore: true)
  _$$_UpdatedCopyWith<_$_Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(TaskFailure taskFailure) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActorStateCopyWith<$Res> {
  factory $TaskActorStateCopyWith(
          TaskActorState value, $Res Function(TaskActorState) then) =
      _$TaskActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskActorStateCopyWithImpl<$Res>
    implements $TaskActorStateCopyWith<$Res> {
  _$TaskActorStateCopyWithImpl(this._value, this._then);

  final TaskActorState _value;
  // ignore: unused_field
  final $Res Function(TaskActorState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TaskActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(TaskFailure taskFailure) actionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _$_ActionInProgress));

  @override
  _$_ActionInProgress get _value => super._value as _$_ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'TaskActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(TaskFailure taskFailure) actionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements TaskActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_ActionSuccessCopyWith<$Res> {
  factory _$$_ActionSuccessCopyWith(
          _$_ActionSuccess value, $Res Function(_$_ActionSuccess) then) =
      __$$_ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionSuccessCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$_ActionSuccessCopyWith<$Res> {
  __$$_ActionSuccessCopyWithImpl(
      _$_ActionSuccess _value, $Res Function(_$_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _$_ActionSuccess));

  @override
  _$_ActionSuccess get _value => super._value as _$_ActionSuccess;
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'TaskActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(TaskFailure taskFailure) actionFailure,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements TaskActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}

/// @nodoc
abstract class _$$_ActionFailureCopyWith<$Res> {
  factory _$$_ActionFailureCopyWith(
          _$_ActionFailure value, $Res Function(_$_ActionFailure) then) =
      __$$_ActionFailureCopyWithImpl<$Res>;
  $Res call({TaskFailure taskFailure});

  $TaskFailureCopyWith<$Res> get taskFailure;
}

/// @nodoc
class __$$_ActionFailureCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$$_ActionFailureCopyWith<$Res> {
  __$$_ActionFailureCopyWithImpl(
      _$_ActionFailure _value, $Res Function(_$_ActionFailure) _then)
      : super(_value, (v) => _then(v as _$_ActionFailure));

  @override
  _$_ActionFailure get _value => super._value as _$_ActionFailure;

  @override
  $Res call({
    Object? taskFailure = freezed,
  }) {
    return _then(_$_ActionFailure(
      taskFailure == freezed
          ? _value.taskFailure
          : taskFailure // ignore: cast_nullable_to_non_nullable
              as TaskFailure,
    ));
  }

  @override
  $TaskFailureCopyWith<$Res> get taskFailure {
    return $TaskFailureCopyWith<$Res>(_value.taskFailure, (value) {
      return _then(_value.copyWith(taskFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.taskFailure);

  @override
  final TaskFailure taskFailure;

  @override
  String toString() {
    return 'TaskActorState.actionFailure(taskFailure: $taskFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionFailure &&
            const DeepCollectionEquality()
                .equals(other.taskFailure, taskFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(taskFailure));

  @JsonKey(ignore: true)
  @override
  _$$_ActionFailureCopyWith<_$_ActionFailure> get copyWith =>
      __$$_ActionFailureCopyWithImpl<_$_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(TaskFailure taskFailure) actionFailure,
  }) {
    return actionFailure(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
  }) {
    return actionFailure?.call(taskFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(TaskFailure taskFailure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(taskFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements TaskActorState {
  const factory _ActionFailure(final TaskFailure taskFailure) =
      _$_ActionFailure;

  TaskFailure get taskFailure;
  @JsonKey(ignore: true)
  _$$_ActionFailureCopyWith<_$_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
