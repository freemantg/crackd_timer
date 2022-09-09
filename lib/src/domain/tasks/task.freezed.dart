// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TaskCopyWithImpl<$Res>;
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
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? emoji = freezed,
    Object? taskColor = freezed,
    Object? activeSessions = freezed,
    Object? completedSessions = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
      taskColor: taskColor == freezed
          ? _value.taskColor
          : taskColor // ignore: cast_nullable_to_non_nullable
              as Color,
      activeSessions: activeSessions == freezed
          ? _value.activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSessions: completedSessions == freezed
          ? _value.completedSessions
          : completedSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $EmojiCopyWith<$Res> get emoji {
    return $EmojiCopyWith<$Res>(_value.emoji, (value) {
      return _then(_value.copyWith(emoji: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
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
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, (v) => _then(v as _$_Task));

  @override
  _$_Task get _value => super._value as _$_Task;

  @override
  $Res call({
    Object? uniqueId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? emoji = freezed,
    Object? taskColor = freezed,
    Object? activeSessions = freezed,
    Object? completedSessions = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_Task(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
      taskColor: taskColor == freezed
          ? _value.taskColor
          : taskColor // ignore: cast_nullable_to_non_nullable
              as Color,
      activeSessions: activeSessions == freezed
          ? _value.activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSessions: completedSessions == freezed
          ? _value.completedSessions
          : completedSessions // ignore: cast_nullable_to_non_nullable
              as int,
      completed: completed == freezed
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
            const DeepCollectionEquality().equals(other.uniqueId, uniqueId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.emoji, emoji) &&
            const DeepCollectionEquality().equals(other.taskColor, taskColor) &&
            const DeepCollectionEquality()
                .equals(other.activeSessions, activeSessions) &&
            const DeepCollectionEquality()
                .equals(other.completedSessions, completedSessions) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uniqueId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(emoji),
      const DeepCollectionEquality().hash(taskColor),
      const DeepCollectionEquality().hash(activeSessions),
      const DeepCollectionEquality().hash(completedSessions),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
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
