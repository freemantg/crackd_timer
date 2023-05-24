// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) {
  return _TaskDto.fromJson(json);
}

/// @nodoc
mixin _$TaskDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Emoji get emoji => throw _privateConstructorUsedError;
  int get taskColor => throw _privateConstructorUsedError;
  int get activeSessions => throw _privateConstructorUsedError;
  int get completedSessions => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDtoCopyWith<TaskDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDtoCopyWith<$Res> {
  factory $TaskDtoCopyWith(TaskDto value, $Res Function(TaskDto) then) =
      _$TaskDtoCopyWithImpl<$Res, TaskDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      Emoji emoji,
      int taskColor,
      int activeSessions,
      int completedSessions,
      bool completed});

  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class _$TaskDtoCopyWithImpl<$Res, $Val extends TaskDto>
    implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? emoji = null,
    Object? taskColor = null,
    Object? activeSessions = null,
    Object? completedSessions = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
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
abstract class _$$_TaskDtoCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$$_TaskDtoCopyWith(
          _$_TaskDto value, $Res Function(_$_TaskDto) then) =
      __$$_TaskDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      Emoji emoji,
      int taskColor,
      int activeSessions,
      int completedSessions,
      bool completed});

  @override
  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class __$$_TaskDtoCopyWithImpl<$Res>
    extends _$TaskDtoCopyWithImpl<$Res, _$_TaskDto>
    implements _$$_TaskDtoCopyWith<$Res> {
  __$$_TaskDtoCopyWithImpl(_$_TaskDto _value, $Res Function(_$_TaskDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? emoji = null,
    Object? taskColor = null,
    Object? activeSessions = null,
    Object? completedSessions = null,
    Object? completed = null,
  }) {
    return _then(_$_TaskDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
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
@JsonSerializable()
class _$_TaskDto extends _TaskDto {
  const _$_TaskDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.emoji,
      required this.taskColor,
      required this.activeSessions,
      required this.completedSessions,
      required this.completed})
      : super._();

  factory _$_TaskDto.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final Emoji emoji;
  @override
  final int taskColor;
  @override
  final int activeSessions;
  @override
  final int completedSessions;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TaskDto(id: $id, title: $title, description: $description, emoji: $emoji, taskColor: $taskColor, activeSessions: $activeSessions, completedSessions: $completedSessions, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDto &&
            (identical(other.id, id) || other.id == id) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, emoji,
      taskColor, activeSessions, completedSessions, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDtoCopyWith<_$_TaskDto> get copyWith =>
      __$$_TaskDtoCopyWithImpl<_$_TaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDtoToJson(
      this,
    );
  }
}

abstract class _TaskDto extends TaskDto {
  const factory _TaskDto(
      {required final String id,
      required final String title,
      required final String description,
      required final Emoji emoji,
      required final int taskColor,
      required final int activeSessions,
      required final int completedSessions,
      required final bool completed}) = _$_TaskDto;
  const _TaskDto._() : super._();

  factory _TaskDto.fromJson(Map<String, dynamic> json) = _$_TaskDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  Emoji get emoji;
  @override
  int get taskColor;
  @override
  int get activeSessions;
  @override
  int get completedSessions;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDtoCopyWith<_$_TaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}
