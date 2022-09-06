// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res> implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  final TimerEvent _value;
  // ignore: unused_field
  final $Res Function(TimerEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$_Started(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.started(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return started(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return started?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TimerEvent {
  const factory _Started({required final int duration}) = _$_Started;

  int get duration;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PausedCopyWith<$Res> {
  factory _$$_PausedCopyWith(_$_Paused value, $Res Function(_$_Paused) then) =
      __$$_PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PausedCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_PausedCopyWith<$Res> {
  __$$_PausedCopyWithImpl(_$_Paused _value, $Res Function(_$_Paused) _then)
      : super(_value, (v) => _then(v as _$_Paused));

  @override
  _$_Paused get _value => super._value as _$_Paused;
}

/// @nodoc

class _$_Paused implements _Paused {
  const _$_Paused();

  @override
  String toString() {
    return 'TimerEvent.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements TimerEvent {
  const factory _Paused() = _$_Paused;
}

/// @nodoc
abstract class _$$_ResumedCopyWith<$Res> {
  factory _$$_ResumedCopyWith(
          _$_Resumed value, $Res Function(_$_Resumed) then) =
      __$$_ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumedCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_ResumedCopyWith<$Res> {
  __$$_ResumedCopyWithImpl(_$_Resumed _value, $Res Function(_$_Resumed) _then)
      : super(_value, (v) => _then(v as _$_Resumed));

  @override
  _$_Resumed get _value => super._value as _$_Resumed;
}

/// @nodoc

class _$_Resumed implements _Resumed {
  const _$_Resumed();

  @override
  String toString() {
    return 'TimerEvent.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _Resumed implements TimerEvent {
  const factory _Resumed() = _$_Resumed;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, (v) => _then(v as _$_Reset));

  @override
  _$_Reset get _value => super._value as _$_Reset;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$_Reset(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.reset(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reset &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_ResetCopyWith<_$_Reset> get copyWith =>
      __$$_ResetCopyWithImpl<_$_Reset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return reset(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return reset?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements TimerEvent {
  const factory _Reset({required final int duration}) = _$_Reset;

  int get duration;
  @JsonKey(ignore: true)
  _$$_ResetCopyWith<_$_Reset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TickedCopyWith<$Res> {
  factory _$$_TickedCopyWith(_$_Ticked value, $Res Function(_$_Ticked) then) =
      __$$_TickedCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$_TickedCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_TickedCopyWith<$Res> {
  __$$_TickedCopyWithImpl(_$_Ticked _value, $Res Function(_$_Ticked) _then)
      : super(_value, (v) => _then(v as _$_Ticked));

  @override
  _$_Ticked get _value => super._value as _$_Ticked;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$_Ticked(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Ticked implements _Ticked {
  const _$_Ticked({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.ticked(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticked &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_TickedCopyWith<_$_Ticked> get copyWith =>
      __$$_TickedCopyWithImpl<_$_Ticked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return ticked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return ticked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class _Ticked implements TimerEvent {
  const factory _Ticked({required final int duration}) = _$_Ticked;

  int get duration;
  @JsonKey(ignore: true)
  _$$_TickedCopyWith<_$_Ticked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDurationCopyWith<$Res> {
  factory _$$_UpdateDurationCopyWith(
          _$_UpdateDuration value, $Res Function(_$_UpdateDuration) then) =
      __$$_UpdateDurationCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$_UpdateDurationCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_UpdateDurationCopyWith<$Res> {
  __$$_UpdateDurationCopyWithImpl(
      _$_UpdateDuration _value, $Res Function(_$_UpdateDuration) _then)
      : super(_value, (v) => _then(v as _$_UpdateDuration));

  @override
  _$_UpdateDuration get _value => super._value as _$_UpdateDuration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$_UpdateDuration(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateDuration implements _UpdateDuration {
  const _$_UpdateDuration({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.updateDuration(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDuration &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateDurationCopyWith<_$_UpdateDuration> get copyWith =>
      __$$_UpdateDurationCopyWithImpl<_$_UpdateDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return updateDuration(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return updateDuration?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (updateDuration != null) {
      return updateDuration(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return updateDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return updateDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (updateDuration != null) {
      return updateDuration(this);
    }
    return orElse();
  }
}

abstract class _UpdateDuration implements TimerEvent {
  const factory _UpdateDuration({required final int duration}) =
      _$_UpdateDuration;

  int get duration;
  @JsonKey(ignore: true)
  _$$_UpdateDurationCopyWith<_$_UpdateDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTimerTypeCopyWith<$Res> {
  factory _$$_UpdateTimerTypeCopyWith(
          _$_UpdateTimerType value, $Res Function(_$_UpdateTimerType) then) =
      __$$_UpdateTimerTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateTimerTypeCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res>
    implements _$$_UpdateTimerTypeCopyWith<$Res> {
  __$$_UpdateTimerTypeCopyWithImpl(
      _$_UpdateTimerType _value, $Res Function(_$_UpdateTimerType) _then)
      : super(_value, (v) => _then(v as _$_UpdateTimerType));

  @override
  _$_UpdateTimerType get _value => super._value as _$_UpdateTimerType;
}

/// @nodoc

class _$_UpdateTimerType implements _UpdateTimerType {
  const _$_UpdateTimerType();

  @override
  String toString() {
    return 'TimerEvent.updateTimerType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateTimerType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int duration) updateDuration,
    required TResult Function() updateTimerType,
  }) {
    return updateTimerType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
  }) {
    return updateTimerType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int duration)? updateDuration,
    TResult Function()? updateTimerType,
    required TResult orElse(),
  }) {
    if (updateTimerType != null) {
      return updateTimerType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_UpdateDuration value) updateDuration,
    required TResult Function(_UpdateTimerType value) updateTimerType,
  }) {
    return updateTimerType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
  }) {
    return updateTimerType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Reset value)? reset,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_UpdateDuration value)? updateDuration,
    TResult Function(_UpdateTimerType value)? updateTimerType,
    required TResult orElse(),
  }) {
    if (updateTimerType != null) {
      return updateTimerType(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimerType implements TimerEvent {
  const factory _UpdateTimerType() = _$_UpdateTimerType;
}

/// @nodoc
mixin _$TimerState {
  int get duration => throw _privateConstructorUsedError;
  TimerType get timerType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration, TimerType timerType) initial,
    required TResult Function(int duration, TimerType timerType) running,
    required TResult Function(int duration, TimerType timerType) paused,
    required TResult Function(int duration, TimerType timerType) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TimerRunning value) running,
    required TResult Function(_TimerPaused value) paused,
    required TResult Function(_TimerCompleted value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call({int duration, TimerType timerType});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timerType = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: timerType == freezed
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({int duration, TimerType timerType});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timerType = freezed,
  }) {
    return _then(_$_Initial(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: timerType == freezed
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.duration = DefaultSettings.focusTime * 60,
      this.timerType = TimerType.focus});

  @override
  @JsonKey()
  final int duration;
  @override
  @JsonKey()
  final TimerType timerType;

  @override
  String toString() {
    return 'TimerState.initial(duration: $duration, timerType: $timerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.timerType, timerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(timerType));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration, TimerType timerType) initial,
    required TResult Function(int duration, TimerType timerType) running,
    required TResult Function(int duration, TimerType timerType) paused,
    required TResult Function(int duration, TimerType timerType) complete,
  }) {
    return initial(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
  }) {
    return initial?.call(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration, timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TimerRunning value) running,
    required TResult Function(_TimerPaused value) paused,
    required TResult Function(_TimerCompleted value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TimerState {
  const factory _Initial({final int duration, final TimerType timerType}) =
      _$_Initial;

  @override
  int get duration;
  @override
  TimerType get timerType;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerRunningCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$_TimerRunningCopyWith(
          _$_TimerRunning value, $Res Function(_$_TimerRunning) then) =
      __$$_TimerRunningCopyWithImpl<$Res>;
  @override
  $Res call({int duration, TimerType timerType});
}

/// @nodoc
class __$$_TimerRunningCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$$_TimerRunningCopyWith<$Res> {
  __$$_TimerRunningCopyWithImpl(
      _$_TimerRunning _value, $Res Function(_$_TimerRunning) _then)
      : super(_value, (v) => _then(v as _$_TimerRunning));

  @override
  _$_TimerRunning get _value => super._value as _$_TimerRunning;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timerType = freezed,
  }) {
    return _then(_$_TimerRunning(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: timerType == freezed
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$_TimerRunning implements _TimerRunning {
  const _$_TimerRunning({required this.duration, required this.timerType});

  @override
  final int duration;
  @override
  final TimerType timerType;

  @override
  String toString() {
    return 'TimerState.running(duration: $duration, timerType: $timerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerRunning &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.timerType, timerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(timerType));

  @JsonKey(ignore: true)
  @override
  _$$_TimerRunningCopyWith<_$_TimerRunning> get copyWith =>
      __$$_TimerRunningCopyWithImpl<_$_TimerRunning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration, TimerType timerType) initial,
    required TResult Function(int duration, TimerType timerType) running,
    required TResult Function(int duration, TimerType timerType) paused,
    required TResult Function(int duration, TimerType timerType) complete,
  }) {
    return running(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
  }) {
    return running?.call(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(duration, timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TimerRunning value) running,
    required TResult Function(_TimerPaused value) paused,
    required TResult Function(_TimerCompleted value) complete,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class _TimerRunning implements TimerState {
  const factory _TimerRunning(
      {required final int duration,
      required final TimerType timerType}) = _$_TimerRunning;

  @override
  int get duration;
  @override
  TimerType get timerType;
  @override
  @JsonKey(ignore: true)
  _$$_TimerRunningCopyWith<_$_TimerRunning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerPausedCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$_TimerPausedCopyWith(
          _$_TimerPaused value, $Res Function(_$_TimerPaused) then) =
      __$$_TimerPausedCopyWithImpl<$Res>;
  @override
  $Res call({int duration, TimerType timerType});
}

/// @nodoc
class __$$_TimerPausedCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$$_TimerPausedCopyWith<$Res> {
  __$$_TimerPausedCopyWithImpl(
      _$_TimerPaused _value, $Res Function(_$_TimerPaused) _then)
      : super(_value, (v) => _then(v as _$_TimerPaused));

  @override
  _$_TimerPaused get _value => super._value as _$_TimerPaused;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timerType = freezed,
  }) {
    return _then(_$_TimerPaused(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: timerType == freezed
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$_TimerPaused implements _TimerPaused {
  const _$_TimerPaused({required this.duration, required this.timerType});

  @override
  final int duration;
  @override
  final TimerType timerType;

  @override
  String toString() {
    return 'TimerState.paused(duration: $duration, timerType: $timerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerPaused &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.timerType, timerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(timerType));

  @JsonKey(ignore: true)
  @override
  _$$_TimerPausedCopyWith<_$_TimerPaused> get copyWith =>
      __$$_TimerPausedCopyWithImpl<_$_TimerPaused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration, TimerType timerType) initial,
    required TResult Function(int duration, TimerType timerType) running,
    required TResult Function(int duration, TimerType timerType) paused,
    required TResult Function(int duration, TimerType timerType) complete,
  }) {
    return paused(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
  }) {
    return paused?.call(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(duration, timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TimerRunning value) running,
    required TResult Function(_TimerPaused value) paused,
    required TResult Function(_TimerCompleted value) complete,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _TimerPaused implements TimerState {
  const factory _TimerPaused(
      {required final int duration,
      required final TimerType timerType}) = _$_TimerPaused;

  @override
  int get duration;
  @override
  TimerType get timerType;
  @override
  @JsonKey(ignore: true)
  _$$_TimerPausedCopyWith<_$_TimerPaused> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerCompletedCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$_TimerCompletedCopyWith(
          _$_TimerCompleted value, $Res Function(_$_TimerCompleted) then) =
      __$$_TimerCompletedCopyWithImpl<$Res>;
  @override
  $Res call({int duration, TimerType timerType});
}

/// @nodoc
class __$$_TimerCompletedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements _$$_TimerCompletedCopyWith<$Res> {
  __$$_TimerCompletedCopyWithImpl(
      _$_TimerCompleted _value, $Res Function(_$_TimerCompleted) _then)
      : super(_value, (v) => _then(v as _$_TimerCompleted));

  @override
  _$_TimerCompleted get _value => super._value as _$_TimerCompleted;

  @override
  $Res call({
    Object? duration = freezed,
    Object? timerType = freezed,
  }) {
    return _then(_$_TimerCompleted(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: timerType == freezed
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$_TimerCompleted implements _TimerCompleted {
  const _$_TimerCompleted({required this.duration, required this.timerType});

  @override
  final int duration;
  @override
  final TimerType timerType;

  @override
  String toString() {
    return 'TimerState.complete(duration: $duration, timerType: $timerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerCompleted &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.timerType, timerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(timerType));

  @JsonKey(ignore: true)
  @override
  _$$_TimerCompletedCopyWith<_$_TimerCompleted> get copyWith =>
      __$$_TimerCompletedCopyWithImpl<_$_TimerCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration, TimerType timerType) initial,
    required TResult Function(int duration, TimerType timerType) running,
    required TResult Function(int duration, TimerType timerType) paused,
    required TResult Function(int duration, TimerType timerType) complete,
  }) {
    return complete(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
  }) {
    return complete?.call(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration, TimerType timerType)? initial,
    TResult Function(int duration, TimerType timerType)? running,
    TResult Function(int duration, TimerType timerType)? paused,
    TResult Function(int duration, TimerType timerType)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(duration, timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TimerRunning value) running,
    required TResult Function(_TimerPaused value) paused,
    required TResult Function(_TimerCompleted value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TimerRunning value)? running,
    TResult Function(_TimerPaused value)? paused,
    TResult Function(_TimerCompleted value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _TimerCompleted implements TimerState {
  const factory _TimerCompleted(
      {required final int duration,
      required final TimerType timerType}) = _$_TimerCompleted;

  @override
  int get duration;
  @override
  TimerType get timerType;
  @override
  @JsonKey(ignore: true)
  _$$_TimerCompletedCopyWith<_$_TimerCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}
