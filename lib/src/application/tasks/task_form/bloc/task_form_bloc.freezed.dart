// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormEventCopyWith<$Res> {
  factory $TaskFormEventCopyWith(
          TaskFormEvent value, $Res Function(TaskFormEvent) then) =
      _$TaskFormEventCopyWithImpl<$Res, TaskFormEvent>;
}

/// @nodoc
class _$TaskFormEventCopyWithImpl<$Res, $Val extends TaskFormEvent>
    implements $TaskFormEventCopyWith<$Res> {
  _$TaskFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Task? initialTask});

  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialTask = freezed,
  }) {
    return _then(_$_Initialized(
      initialTask: freezed == initialTask
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res>? get initialTask {
    if (_value.initialTask == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.initialTask!, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized({this.initialTask});

  @override
  final Task? initialTask;

  @override
  String toString() {
    return 'TaskFormEvent.initialized(initialTask: $initialTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialTask, initialTask) ||
                other.initialTask == initialTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return initialized(initialTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return initialized?.call(initialTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TaskFormEvent {
  const factory _Initialized({final Task? initialTask}) = _$_Initialized;

  Task? get initialTask;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String titleStr});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_TitleChanged>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleStr = null,
  }) {
    return _then(_$_TitleChanged(
      null == titleStr
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'TaskFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                other.titleStr == titleStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TaskFormEvent {
  const factory _TitleChanged(final String titleStr) = _$_TitleChanged;

  String get titleStr;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedCopyWith<$Res> {
  factory _$$_DescriptionChangedCopyWith(_$_DescriptionChanged value,
          $Res Function(_$_DescriptionChanged) then) =
      __$$_DescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$_DescriptionChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_DescriptionChanged>
    implements _$$_DescriptionChangedCopyWith<$Res> {
  __$$_DescriptionChangedCopyWithImpl(
      _$_DescriptionChanged _value, $Res Function(_$_DescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionStr = null,
  }) {
    return _then(_$_DescriptionChanged(
      null == descriptionStr
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'TaskFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChanged &&
            (identical(other.descriptionStr, descriptionStr) ||
                other.descriptionStr == descriptionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      __$$_DescriptionChangedCopyWithImpl<_$_DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return descriptionChanged?.call(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements TaskFormEvent {
  const factory _DescriptionChanged(final String descriptionStr) =
      _$_DescriptionChanged;

  String get descriptionStr;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActiveSessionsChangedCopyWith<$Res> {
  factory _$$_ActiveSessionsChangedCopyWith(_$_ActiveSessionsChanged value,
          $Res Function(_$_ActiveSessionsChanged) then) =
      __$$_ActiveSessionsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int activeSessions});
}

/// @nodoc
class __$$_ActiveSessionsChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_ActiveSessionsChanged>
    implements _$$_ActiveSessionsChangedCopyWith<$Res> {
  __$$_ActiveSessionsChangedCopyWithImpl(_$_ActiveSessionsChanged _value,
      $Res Function(_$_ActiveSessionsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSessions = null,
  }) {
    return _then(_$_ActiveSessionsChanged(
      null == activeSessions
          ? _value.activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ActiveSessionsChanged implements _ActiveSessionsChanged {
  const _$_ActiveSessionsChanged(this.activeSessions);

  @override
  final int activeSessions;

  @override
  String toString() {
    return 'TaskFormEvent.activeSessionsChanged(activeSessions: $activeSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveSessionsChanged &&
            (identical(other.activeSessions, activeSessions) ||
                other.activeSessions == activeSessions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeSessions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveSessionsChangedCopyWith<_$_ActiveSessionsChanged> get copyWith =>
      __$$_ActiveSessionsChangedCopyWithImpl<_$_ActiveSessionsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return activeSessionsChanged(activeSessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return activeSessionsChanged?.call(activeSessions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (activeSessionsChanged != null) {
      return activeSessionsChanged(activeSessions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return activeSessionsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return activeSessionsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (activeSessionsChanged != null) {
      return activeSessionsChanged(this);
    }
    return orElse();
  }
}

abstract class _ActiveSessionsChanged implements TaskFormEvent {
  const factory _ActiveSessionsChanged(final int activeSessions) =
      _$_ActiveSessionsChanged;

  int get activeSessions;
  @JsonKey(ignore: true)
  _$$_ActiveSessionsChangedCopyWith<_$_ActiveSessionsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorChangedCopyWith<$Res> {
  factory _$$_ColorChangedCopyWith(
          _$_ColorChanged value, $Res Function(_$_ColorChanged) then) =
      __$$_ColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_ColorChanged>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_ColorChanged(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'TaskFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorChanged &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      __$$_ColorChangedCopyWithImpl<_$_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements TaskFormEvent {
  const factory _ColorChanged(final Color color) = _$_ColorChanged;

  Color get color;
  @JsonKey(ignore: true)
  _$$_ColorChangedCopyWith<_$_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmojiChangedCopyWith<$Res> {
  factory _$$_EmojiChangedCopyWith(
          _$_EmojiChanged value, $Res Function(_$_EmojiChanged) then) =
      __$$_EmojiChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Emoji emoji});

  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class __$$_EmojiChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_EmojiChanged>
    implements _$$_EmojiChangedCopyWith<$Res> {
  __$$_EmojiChangedCopyWithImpl(
      _$_EmojiChanged _value, $Res Function(_$_EmojiChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_$_EmojiChanged(
      null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmojiCopyWith<$Res> get emoji {
    return $EmojiCopyWith<$Res>(_value.emoji, (value) {
      return _then(_value.copyWith(emoji: value));
    });
  }
}

/// @nodoc

class _$_EmojiChanged implements _EmojiChanged {
  const _$_EmojiChanged(this.emoji);

  @override
  final Emoji emoji;

  @override
  String toString() {
    return 'TaskFormEvent.emojiChanged(emoji: $emoji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmojiChanged &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmojiChangedCopyWith<_$_EmojiChanged> get copyWith =>
      __$$_EmojiChangedCopyWithImpl<_$_EmojiChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return emojiChanged(emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return emojiChanged?.call(emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (emojiChanged != null) {
      return emojiChanged(emoji);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return emojiChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return emojiChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (emojiChanged != null) {
      return emojiChanged(this);
    }
    return orElse();
  }
}

abstract class _EmojiChanged implements TaskFormEvent {
  const factory _EmojiChanged(final Emoji emoji) = _$_EmojiChanged;

  Emoji get emoji;
  @JsonKey(ignore: true)
  _$$_EmojiChangedCopyWith<_$_EmojiChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncrementPomodoroCopyWith<$Res> {
  factory _$$_IncrementPomodoroCopyWith(_$_IncrementPomodoro value,
          $Res Function(_$_IncrementPomodoro) then) =
      __$$_IncrementPomodoroCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncrementPomodoroCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_IncrementPomodoro>
    implements _$$_IncrementPomodoroCopyWith<$Res> {
  __$$_IncrementPomodoroCopyWithImpl(
      _$_IncrementPomodoro _value, $Res Function(_$_IncrementPomodoro) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncrementPomodoro implements _IncrementPomodoro {
  const _$_IncrementPomodoro();

  @override
  String toString() {
    return 'TaskFormEvent.incrementPomodoro()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncrementPomodoro);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return incrementPomodoro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return incrementPomodoro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (incrementPomodoro != null) {
      return incrementPomodoro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return incrementPomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return incrementPomodoro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (incrementPomodoro != null) {
      return incrementPomodoro(this);
    }
    return orElse();
  }
}

abstract class _IncrementPomodoro implements TaskFormEvent {
  const factory _IncrementPomodoro() = _$_IncrementPomodoro;
}

/// @nodoc
abstract class _$$_DecrementPomodoroCopyWith<$Res> {
  factory _$$_DecrementPomodoroCopyWith(_$_DecrementPomodoro value,
          $Res Function(_$_DecrementPomodoro) then) =
      __$$_DecrementPomodoroCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecrementPomodoroCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_DecrementPomodoro>
    implements _$$_DecrementPomodoroCopyWith<$Res> {
  __$$_DecrementPomodoroCopyWithImpl(
      _$_DecrementPomodoro _value, $Res Function(_$_DecrementPomodoro) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DecrementPomodoro implements _DecrementPomodoro {
  const _$_DecrementPomodoro();

  @override
  String toString() {
    return 'TaskFormEvent.decrementPomodoro()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DecrementPomodoro);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return decrementPomodoro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return decrementPomodoro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (decrementPomodoro != null) {
      return decrementPomodoro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return decrementPomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return decrementPomodoro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (decrementPomodoro != null) {
      return decrementPomodoro(this);
    }
    return orElse();
  }
}

abstract class _DecrementPomodoro implements TaskFormEvent {
  const factory _DecrementPomodoro() = _$_DecrementPomodoro;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TaskFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TaskFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$$_SaveInProgressCopyWith<$Res> {
  factory _$$_SaveInProgressCopyWith(
          _$_SaveInProgress value, $Res Function(_$_SaveInProgress) then) =
      __$$_SaveInProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<TaskFailure, Unit> failureOrSuccess});
}

/// @nodoc
class __$$_SaveInProgressCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res, _$_SaveInProgress>
    implements _$$_SaveInProgressCopyWith<$Res> {
  __$$_SaveInProgressCopyWithImpl(
      _$_SaveInProgress _value, $Res Function(_$_SaveInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_SaveInProgress(
      null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<TaskFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_SaveInProgress implements _SaveInProgress {
  const _$_SaveInProgress(this.failureOrSuccess);

  @override
  final Either<TaskFailure, Unit> failureOrSuccess;

  @override
  String toString() {
    return 'TaskFormEvent.saveInProgress(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveInProgress &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveInProgressCopyWith<_$_SaveInProgress> get copyWith =>
      __$$_SaveInProgressCopyWithImpl<_$_SaveInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task? initialTask) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(int activeSessions) activeSessionsChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(Emoji emoji) emojiChanged,
    required TResult Function() incrementPomodoro,
    required TResult Function() decrementPomodoro,
    required TResult Function() saved,
    required TResult Function(Either<TaskFailure, Unit> failureOrSuccess)
        saveInProgress,
  }) {
    return saveInProgress(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task? initialTask)? initialized,
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(int activeSessions)? activeSessionsChanged,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(Emoji emoji)? emojiChanged,
    TResult? Function()? incrementPomodoro,
    TResult? Function()? decrementPomodoro,
    TResult? Function()? saved,
    TResult? Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
  }) {
    return saveInProgress?.call(failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
    TResult Function(Either<TaskFailure, Unit> failureOrSuccess)?
        saveInProgress,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ActiveSessionsChanged value)
        activeSessionsChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_EmojiChanged value) emojiChanged,
    required TResult Function(_IncrementPomodoro value) incrementPomodoro,
    required TResult Function(_DecrementPomodoro value) decrementPomodoro,
    required TResult Function(_Saved value) saved,
    required TResult Function(_SaveInProgress value) saveInProgress,
  }) {
    return saveInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_EmojiChanged value)? emojiChanged,
    TResult? Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult? Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_SaveInProgress value)? saveInProgress,
  }) {
    return saveInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
    TResult Function(_SaveInProgress value)? saveInProgress,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(this);
    }
    return orElse();
  }
}

abstract class _SaveInProgress implements TaskFormEvent {
  const factory _SaveInProgress(
      final Either<TaskFailure, Unit> failureOrSuccess) = _$_SaveInProgress;

  Either<TaskFailure, Unit> get failureOrSuccess;
  @JsonKey(ignore: true)
  _$$_SaveInProgressCopyWith<_$_SaveInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskFormState {
  Task get task => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<TaskFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res, TaskFormState>;
  @useResult
  $Res call(
      {Task task,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res, $Val extends TaskFormState>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TaskFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$$_TaskFormStateCopyWith(
          _$_TaskFormState value, $Res Function(_$_TaskFormState) then) =
      __$$_TaskFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Task task,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res, _$_TaskFormState>
    implements _$$_TaskFormStateCopyWith<$Res> {
  __$$_TaskFormStateCopyWithImpl(
      _$_TaskFormState _value, $Res Function(_$_TaskFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_TaskFormState(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TaskFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TaskFormState implements _TaskFormState {
  const _$_TaskFormState(
      {required this.task,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Task task;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TaskFormState(task: $task, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskFormState &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, showErrorMessages,
      isEditing, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      __$$_TaskFormStateCopyWithImpl<_$_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  const factory _TaskFormState(
      {required final Task task,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<TaskFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_TaskFormState;

  @override
  Task get task;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TaskFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
