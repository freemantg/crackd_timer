// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Emoji get emoji => throw _privateConstructorUsedError;
  Color get taskColor => throw _privateConstructorUsedError;
  int get activeSessions => throw _privateConstructorUsedError;
  int get completedSessions => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {UniqueId uniqueId,
      String title,
      String description,
      Emoji emoji,
      Color taskColor,
      int activeSessions,
      int completedSessions,
      bool completed});

  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? title = null,
    Object? description = null,
    Object? emoji = null,
    Object? taskColor = null,
    Object? activeSessions = null,
    Object? completedSessions = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
      taskColor: null == taskColor
          ? _value.taskColor
          : taskColor // ignore: cast_nullable_to_non_nullable
              as Color,
      activeSessions: null == activeSessions
          ? _value.activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSessions: null == completedSessions
          ? _value.completedSessions
          : completedSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmojiCopyWith<$Res> get emoji {
    return $EmojiCopyWith<$Res>(_value.emoji, (value) {
      return _then(_value.copyWith(emoji: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId uniqueId,
      String title,
      String description,
      Emoji emoji,
      Color taskColor,
      int activeSessions,
      int completedSessions,
      bool completed});

  @override
  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? title = null,
    Object? description = null,
    Object? emoji = null,
    Object? taskColor = null,
    Object? activeSessions = null,
    Object? completedSessions = null,
    Object? completed = null,
  }) {
    return _then(_$_Task(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
      taskColor: null == taskColor
          ? _value.taskColor
          : taskColor // ignore: cast_nullable_to_non_nullable
              as Color,
      activeSessions: null == activeSessions
          ? _value.activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSessions: null == completedSessions
          ? _value.completedSessions
          : completedSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Task implements _Task {
  const _$_Task(
      {required this.uniqueId,
      required this.title,
      required this.description,
      required this.emoji,
      required this.taskColor,
      required this.activeSessions,
      required this.completedSessions,
      required this.completed});

  @override
  final UniqueId uniqueId;
  @override
  final String title;
  @override
  final String description;
  @override
  final Emoji emoji;
  @override
  final Color taskColor;
  @override
  final int activeSessions;
  @override
  final int completedSessions;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Task(uniqueId: $uniqueId, title: $title, description: $description, emoji: $emoji, taskColor: $taskColor, activeSessions: $activeSessions, completedSessions: $completedSessions, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.taskColor, taskColor) ||
                other.taskColor == taskColor) &&
            (identical(other.activeSessions, activeSessions) ||
                other.activeSessions == activeSessions) &&
            (identical(other.completedSessions, completedSessions) ||
                other.completedSessions == completedSessions) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uniqueId, title, description,
      emoji, taskColor, activeSessions, completedSessions, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {required final UniqueId uniqueId,
      required final String title,
      required final String description,
      required final Emoji emoji,
      required final Color taskColor,
      required final int activeSessions,
      required final int completedSessions,
      required final bool completed}) = _$_Task;

  @override
  UniqueId get uniqueId;
  @override
  String get title;
  @override
  String get description;
  @override
  Emoji get emoji;
  @override
  Color get taskColor;
  @override
  int get activeSessions;
  @override
  int get completedSessions;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
