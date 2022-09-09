// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get uniqueId => throw _privateConstructorUsedError;
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
      _$TaskDtoCopyWithImpl<$Res>;
  $Res call(
      {String uniqueId,
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
class _$TaskDtoCopyWithImpl<$Res> implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  final TaskDto _value;
  // ignore: unused_field
  final $Res Function(TaskDto) _then;

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
              as String,
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
              as int,
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
abstract class _$$_TaskDtoCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$$_TaskDtoCopyWith(
          _$_TaskDto value, $Res Function(_$_TaskDto) then) =
      __$$_TaskDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uniqueId,
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
class __$$_TaskDtoCopyWithImpl<$Res> extends _$TaskDtoCopyWithImpl<$Res>
    implements _$$_TaskDtoCopyWith<$Res> {
  __$$_TaskDtoCopyWithImpl(_$_TaskDto _value, $Res Function(_$_TaskDto) _then)
      : super(_value, (v) => _then(v as _$_TaskDto));

  @override
  _$_TaskDto get _value => super._value as _$_TaskDto;

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
    return _then(_$_TaskDto(
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int,
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
@JsonSerializable()
class _$_TaskDto extends _TaskDto {
  const _$_TaskDto(
      {required this.uniqueId,
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
  final String uniqueId;
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
    return 'TaskDto(uniqueId: $uniqueId, title: $title, description: $description, emoji: $emoji, taskColor: $taskColor, activeSessions: $activeSessions, completedSessions: $completedSessions, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDto &&
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

  @JsonKey(ignore: true)
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
      {required final String uniqueId,
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
  String get uniqueId;
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
