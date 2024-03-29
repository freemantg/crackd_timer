// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  String get minutes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String minutes) updateFocusTime,
    required TResult Function(String minutes) updateShortBreakTime,
    required TResult Function(String minutes) updateLongBreakTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String minutes)? updateFocusTime,
    TResult? Function(String minutes)? updateShortBreakTime,
    TResult? Function(String minutes)? updateLongBreakTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String minutes)? updateFocusTime,
    TResult Function(String minutes)? updateShortBreakTime,
    TResult Function(String minutes)? updateLongBreakTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFocusTime value) updateFocusTime,
    required TResult Function(_UpdateShortBreakTime value) updateShortBreakTime,
    required TResult Function(_UpdateLongBreakTime value) updateLongBreakTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFocusTime value)? updateFocusTime,
    TResult? Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult? Function(_UpdateLongBreakTime value)? updateLongBreakTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFocusTime value)? updateFocusTime,
    TResult Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult Function(_UpdateLongBreakTime value)? updateLongBreakTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({String minutes});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateFocusTimeCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$_UpdateFocusTimeCopyWith(
          _$_UpdateFocusTime value, $Res Function(_$_UpdateFocusTime) then) =
      __$$_UpdateFocusTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String minutes});
}

/// @nodoc
class __$$_UpdateFocusTimeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_UpdateFocusTime>
    implements _$$_UpdateFocusTimeCopyWith<$Res> {
  __$$_UpdateFocusTimeCopyWithImpl(
      _$_UpdateFocusTime _value, $Res Function(_$_UpdateFocusTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
  }) {
    return _then(_$_UpdateFocusTime(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateFocusTime implements _UpdateFocusTime {
  const _$_UpdateFocusTime({required this.minutes});

  @override
  final String minutes;

  @override
  String toString() {
    return 'SettingsEvent.updateFocusTime(minutes: $minutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFocusTime &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFocusTimeCopyWith<_$_UpdateFocusTime> get copyWith =>
      __$$_UpdateFocusTimeCopyWithImpl<_$_UpdateFocusTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String minutes) updateFocusTime,
    required TResult Function(String minutes) updateShortBreakTime,
    required TResult Function(String minutes) updateLongBreakTime,
  }) {
    return updateFocusTime(minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String minutes)? updateFocusTime,
    TResult? Function(String minutes)? updateShortBreakTime,
    TResult? Function(String minutes)? updateLongBreakTime,
  }) {
    return updateFocusTime?.call(minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String minutes)? updateFocusTime,
    TResult Function(String minutes)? updateShortBreakTime,
    TResult Function(String minutes)? updateLongBreakTime,
    required TResult orElse(),
  }) {
    if (updateFocusTime != null) {
      return updateFocusTime(minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFocusTime value) updateFocusTime,
    required TResult Function(_UpdateShortBreakTime value) updateShortBreakTime,
    required TResult Function(_UpdateLongBreakTime value) updateLongBreakTime,
  }) {
    return updateFocusTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFocusTime value)? updateFocusTime,
    TResult? Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult? Function(_UpdateLongBreakTime value)? updateLongBreakTime,
  }) {
    return updateFocusTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFocusTime value)? updateFocusTime,
    TResult Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult Function(_UpdateLongBreakTime value)? updateLongBreakTime,
    required TResult orElse(),
  }) {
    if (updateFocusTime != null) {
      return updateFocusTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateFocusTime implements SettingsEvent {
  const factory _UpdateFocusTime({required final String minutes}) =
      _$_UpdateFocusTime;

  @override
  String get minutes;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFocusTimeCopyWith<_$_UpdateFocusTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateShortBreakTimeCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$_UpdateShortBreakTimeCopyWith(_$_UpdateShortBreakTime value,
          $Res Function(_$_UpdateShortBreakTime) then) =
      __$$_UpdateShortBreakTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String minutes});
}

/// @nodoc
class __$$_UpdateShortBreakTimeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_UpdateShortBreakTime>
    implements _$$_UpdateShortBreakTimeCopyWith<$Res> {
  __$$_UpdateShortBreakTimeCopyWithImpl(_$_UpdateShortBreakTime _value,
      $Res Function(_$_UpdateShortBreakTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
  }) {
    return _then(_$_UpdateShortBreakTime(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateShortBreakTime implements _UpdateShortBreakTime {
  const _$_UpdateShortBreakTime({required this.minutes});

  @override
  final String minutes;

  @override
  String toString() {
    return 'SettingsEvent.updateShortBreakTime(minutes: $minutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateShortBreakTime &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateShortBreakTimeCopyWith<_$_UpdateShortBreakTime> get copyWith =>
      __$$_UpdateShortBreakTimeCopyWithImpl<_$_UpdateShortBreakTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String minutes) updateFocusTime,
    required TResult Function(String minutes) updateShortBreakTime,
    required TResult Function(String minutes) updateLongBreakTime,
  }) {
    return updateShortBreakTime(minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String minutes)? updateFocusTime,
    TResult? Function(String minutes)? updateShortBreakTime,
    TResult? Function(String minutes)? updateLongBreakTime,
  }) {
    return updateShortBreakTime?.call(minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String minutes)? updateFocusTime,
    TResult Function(String minutes)? updateShortBreakTime,
    TResult Function(String minutes)? updateLongBreakTime,
    required TResult orElse(),
  }) {
    if (updateShortBreakTime != null) {
      return updateShortBreakTime(minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFocusTime value) updateFocusTime,
    required TResult Function(_UpdateShortBreakTime value) updateShortBreakTime,
    required TResult Function(_UpdateLongBreakTime value) updateLongBreakTime,
  }) {
    return updateShortBreakTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFocusTime value)? updateFocusTime,
    TResult? Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult? Function(_UpdateLongBreakTime value)? updateLongBreakTime,
  }) {
    return updateShortBreakTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFocusTime value)? updateFocusTime,
    TResult Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult Function(_UpdateLongBreakTime value)? updateLongBreakTime,
    required TResult orElse(),
  }) {
    if (updateShortBreakTime != null) {
      return updateShortBreakTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateShortBreakTime implements SettingsEvent {
  const factory _UpdateShortBreakTime({required final String minutes}) =
      _$_UpdateShortBreakTime;

  @override
  String get minutes;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateShortBreakTimeCopyWith<_$_UpdateShortBreakTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateLongBreakTimeCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$_UpdateLongBreakTimeCopyWith(_$_UpdateLongBreakTime value,
          $Res Function(_$_UpdateLongBreakTime) then) =
      __$$_UpdateLongBreakTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String minutes});
}

/// @nodoc
class __$$_UpdateLongBreakTimeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_UpdateLongBreakTime>
    implements _$$_UpdateLongBreakTimeCopyWith<$Res> {
  __$$_UpdateLongBreakTimeCopyWithImpl(_$_UpdateLongBreakTime _value,
      $Res Function(_$_UpdateLongBreakTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
  }) {
    return _then(_$_UpdateLongBreakTime(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateLongBreakTime implements _UpdateLongBreakTime {
  const _$_UpdateLongBreakTime({required this.minutes});

  @override
  final String minutes;

  @override
  String toString() {
    return 'SettingsEvent.updateLongBreakTime(minutes: $minutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLongBreakTime &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLongBreakTimeCopyWith<_$_UpdateLongBreakTime> get copyWith =>
      __$$_UpdateLongBreakTimeCopyWithImpl<_$_UpdateLongBreakTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String minutes) updateFocusTime,
    required TResult Function(String minutes) updateShortBreakTime,
    required TResult Function(String minutes) updateLongBreakTime,
  }) {
    return updateLongBreakTime(minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String minutes)? updateFocusTime,
    TResult? Function(String minutes)? updateShortBreakTime,
    TResult? Function(String minutes)? updateLongBreakTime,
  }) {
    return updateLongBreakTime?.call(minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String minutes)? updateFocusTime,
    TResult Function(String minutes)? updateShortBreakTime,
    TResult Function(String minutes)? updateLongBreakTime,
    required TResult orElse(),
  }) {
    if (updateLongBreakTime != null) {
      return updateLongBreakTime(minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFocusTime value) updateFocusTime,
    required TResult Function(_UpdateShortBreakTime value) updateShortBreakTime,
    required TResult Function(_UpdateLongBreakTime value) updateLongBreakTime,
  }) {
    return updateLongBreakTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFocusTime value)? updateFocusTime,
    TResult? Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult? Function(_UpdateLongBreakTime value)? updateLongBreakTime,
  }) {
    return updateLongBreakTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFocusTime value)? updateFocusTime,
    TResult Function(_UpdateShortBreakTime value)? updateShortBreakTime,
    TResult Function(_UpdateLongBreakTime value)? updateLongBreakTime,
    required TResult orElse(),
  }) {
    if (updateLongBreakTime != null) {
      return updateLongBreakTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateLongBreakTime implements SettingsEvent {
  const factory _UpdateLongBreakTime({required final String minutes}) =
      _$_UpdateLongBreakTime;

  @override
  String get minutes;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateLongBreakTimeCopyWith<_$_UpdateLongBreakTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  int get focusTime => throw _privateConstructorUsedError;
  int get shortBreakTime => throw _privateConstructorUsedError;
  int get longBreakTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({int focusTime, int shortBreakTime, int longBreakTime});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusTime = null,
    Object? shortBreakTime = null,
    Object? longBreakTime = null,
  }) {
    return _then(_value.copyWith(
      focusTime: null == focusTime
          ? _value.focusTime
          : focusTime // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakTime: null == shortBreakTime
          ? _value.shortBreakTime
          : shortBreakTime // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakTime: null == longBreakTime
          ? _value.longBreakTime
          : longBreakTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int focusTime, int shortBreakTime, int longBreakTime});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusTime = null,
    Object? shortBreakTime = null,
    Object? longBreakTime = null,
  }) {
    return _then(_$_SettingsState(
      focusTime: null == focusTime
          ? _value.focusTime
          : focusTime // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakTime: null == shortBreakTime
          ? _value.shortBreakTime
          : shortBreakTime // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakTime: null == longBreakTime
          ? _value.longBreakTime
          : longBreakTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.focusTime,
      required this.shortBreakTime,
      required this.longBreakTime});

  @override
  final int focusTime;
  @override
  final int shortBreakTime;
  @override
  final int longBreakTime;

  @override
  String toString() {
    return 'SettingsState(focusTime: $focusTime, shortBreakTime: $shortBreakTime, longBreakTime: $longBreakTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.focusTime, focusTime) ||
                other.focusTime == focusTime) &&
            (identical(other.shortBreakTime, shortBreakTime) ||
                other.shortBreakTime == shortBreakTime) &&
            (identical(other.longBreakTime, longBreakTime) ||
                other.longBreakTime == longBreakTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, focusTime, shortBreakTime, longBreakTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final int focusTime,
      required final int shortBreakTime,
      required final int longBreakTime}) = _$_SettingsState;

  @override
  int get focusTime;
  @override
  int get shortBreakTime;
  @override
  int get longBreakTime;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
