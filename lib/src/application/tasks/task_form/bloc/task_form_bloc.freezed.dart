// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormEventCopyWith<$Res> {
  factory $TaskFormEventCopyWith(
          TaskFormEvent value, $Res Function(TaskFormEvent) then) =
      _$TaskFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskFormEventCopyWithImpl<$Res>
    implements $TaskFormEventCopyWith<$Res> {
  _$TaskFormEventCopyWithImpl(this._value, this._then);

  final TaskFormEvent _value;
  // ignore: unused_field
  final $Res Function(TaskFormEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call({Task? initialTask});

  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? initialTask = freezed,
  }) {
    return _then(_$_Initialized(
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }

  @override
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
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialTask));

  @JsonKey(ignore: true)
  @override
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
  }) {
    return initialized(initialTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
  $Res call({String titleStr});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, (v) => _then(v as _$_TitleChanged));

  @override
  _$_TitleChanged get _value => super._value as _$_TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_$_TitleChanged(
      titleStr == freezed
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
            const DeepCollectionEquality().equals(other.titleStr, titleStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(titleStr));

  @JsonKey(ignore: true)
  @override
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
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$_DescriptionChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_DescriptionChangedCopyWith<$Res> {
  __$$_DescriptionChangedCopyWithImpl(
      _$_DescriptionChanged _value, $Res Function(_$_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _$_DescriptionChanged));

  @override
  _$_DescriptionChanged get _value => super._value as _$_DescriptionChanged;

  @override
  $Res call({
    Object? descriptionStr = freezed,
  }) {
    return _then(_$_DescriptionChanged(
      descriptionStr == freezed
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
            const DeepCollectionEquality()
                .equals(other.descriptionStr, descriptionStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(descriptionStr));

  @JsonKey(ignore: true)
  @override
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
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
  $Res call({int activeSessions});
}

/// @nodoc
class __$$_ActiveSessionsChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_ActiveSessionsChangedCopyWith<$Res> {
  __$$_ActiveSessionsChangedCopyWithImpl(_$_ActiveSessionsChanged _value,
      $Res Function(_$_ActiveSessionsChanged) _then)
      : super(_value, (v) => _then(v as _$_ActiveSessionsChanged));

  @override
  _$_ActiveSessionsChanged get _value =>
      super._value as _$_ActiveSessionsChanged;

  @override
  $Res call({
    Object? activeSessions = freezed,
  }) {
    return _then(_$_ActiveSessionsChanged(
      activeSessions == freezed
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
            const DeepCollectionEquality()
                .equals(other.activeSessions, activeSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(activeSessions));

  @JsonKey(ignore: true)
  @override
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
  }) {
    return activeSessionsChanged(activeSessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return activeSessionsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
  $Res call({Color color});
}

/// @nodoc
class __$$_ColorChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_ColorChangedCopyWith<$Res> {
  __$$_ColorChangedCopyWithImpl(
      _$_ColorChanged _value, $Res Function(_$_ColorChanged) _then)
      : super(_value, (v) => _then(v as _$_ColorChanged));

  @override
  _$_ColorChanged get _value => super._value as _$_ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_ColorChanged(
      color == freezed
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
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
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
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
  $Res call({Emoji emoji});

  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class __$$_EmojiChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_EmojiChangedCopyWith<$Res> {
  __$$_EmojiChangedCopyWithImpl(
      _$_EmojiChanged _value, $Res Function(_$_EmojiChanged) _then)
      : super(_value, (v) => _then(v as _$_EmojiChanged));

  @override
  _$_EmojiChanged get _value => super._value as _$_EmojiChanged;

  @override
  $Res call({
    Object? emoji = freezed,
  }) {
    return _then(_$_EmojiChanged(
      emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
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
            const DeepCollectionEquality().equals(other.emoji, emoji));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emoji));

  @JsonKey(ignore: true)
  @override
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
  }) {
    return emojiChanged(emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return emojiChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_IncrementPomodoroCopyWith<$Res> {
  __$$_IncrementPomodoroCopyWithImpl(
      _$_IncrementPomodoro _value, $Res Function(_$_IncrementPomodoro) _then)
      : super(_value, (v) => _then(v as _$_IncrementPomodoro));

  @override
  _$_IncrementPomodoro get _value => super._value as _$_IncrementPomodoro;
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
  }) {
    return incrementPomodoro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return incrementPomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_DecrementPomodoroCopyWith<$Res> {
  __$$_DecrementPomodoroCopyWithImpl(
      _$_DecrementPomodoro _value, $Res Function(_$_DecrementPomodoro) _then)
      : super(_value, (v) => _then(v as _$_DecrementPomodoro));

  @override
  _$_DecrementPomodoro get _value => super._value as _$_DecrementPomodoro;
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
  }) {
    return decrementPomodoro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return decrementPomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
class __$$_SavedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;
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
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task? initialTask)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(int activeSessions)? activeSessionsChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(Emoji emoji)? emojiChanged,
    TResult Function()? incrementPomodoro,
    TResult Function()? decrementPomodoro,
    TResult Function()? saved,
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
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ActiveSessionsChanged value)? activeSessionsChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_EmojiChanged value)? emojiChanged,
    TResult Function(_IncrementPomodoro value)? incrementPomodoro,
    TResult Function(_DecrementPomodoro value)? decrementPomodoro,
    TResult Function(_Saved value)? saved,
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
mixin _$TaskFormState {
  Task get task => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res>;
  $Res call({Task task, bool showErrorMessages, bool isEditing, bool isSaving});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  final TaskFormState _value;
  // ignore: unused_field
  final $Res Function(TaskFormState) _then;

  @override
  $Res call({
    Object? task = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$$_TaskFormStateCopyWith(
          _$_TaskFormState value, $Res Function(_$_TaskFormState) then) =
      __$$_TaskFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Task task, bool showErrorMessages, bool isEditing, bool isSaving});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res>
    implements _$$_TaskFormStateCopyWith<$Res> {
  __$$_TaskFormStateCopyWithImpl(
      _$_TaskFormState _value, $Res Function(_$_TaskFormState) _then)
      : super(_value, (v) => _then(v as _$_TaskFormState));

  @override
  _$_TaskFormState get _value => super._value as _$_TaskFormState;

  @override
  $Res call({
    Object? task = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_$_TaskFormState(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskFormState implements _TaskFormState {
  const _$_TaskFormState(
      {required this.task,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving});

  @override
  final Task task;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;

  @override
  String toString() {
    return 'TaskFormState(task: $task, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskFormState &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving));

  @JsonKey(ignore: true)
  @override
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      __$$_TaskFormStateCopyWithImpl<_$_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  const factory _TaskFormState(
      {required final Task task,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving}) = _$_TaskFormState;

  @override
  Task get task;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$_TaskFormStateCopyWith<_$_TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
