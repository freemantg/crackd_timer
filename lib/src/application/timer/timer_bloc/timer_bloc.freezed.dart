// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$Started(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.duration});

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
            other is _$Started &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return started(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return started?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
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
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements TimerEvent {
  const factory Started({required final int duration}) = _$Started;

  int get duration;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PausedCopyWith<$Res> {
  factory _$$PausedCopyWith(_$Paused value, $Res Function(_$Paused) then) =
      __$$PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PausedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$Paused>
    implements _$$PausedCopyWith<$Res> {
  __$$PausedCopyWithImpl(_$Paused _value, $Res Function(_$Paused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Paused implements Paused {
  const _$Paused();

  @override
  String toString() {
    return 'TimerEvent.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
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
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class Paused implements TimerEvent {
  const factory Paused() = _$Paused;
}

/// @nodoc
abstract class _$$ResumedCopyWith<$Res> {
  factory _$$ResumedCopyWith(_$Resumed value, $Res Function(_$Resumed) then) =
      __$$ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$Resumed>
    implements _$$ResumedCopyWith<$Res> {
  __$$ResumedCopyWithImpl(_$Resumed _value, $Res Function(_$Resumed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Resumed implements Resumed {
  const _$Resumed();

  @override
  String toString() {
    return 'TimerEvent.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
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
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class Resumed implements TimerEvent {
  const factory Resumed() = _$Resumed;
}

/// @nodoc
abstract class _$$SkippedCopyWith<$Res> {
  factory _$$SkippedCopyWith(_$Skipped value, $Res Function(_$Skipped) then) =
      __$$SkippedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkippedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$Skipped>
    implements _$$SkippedCopyWith<$Res> {
  __$$SkippedCopyWithImpl(_$Skipped _value, $Res Function(_$Skipped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Skipped implements Skipped {
  const _$Skipped();

  @override
  String toString() {
    return 'TimerEvent.skipped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Skipped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return skipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return skipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return skipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return skipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (skipped != null) {
      return skipped(this);
    }
    return orElse();
  }
}

abstract class Skipped implements TimerEvent {
  const factory Skipped() = _$Skipped;
}

/// @nodoc
abstract class _$$ResetCopyWith<$Res> {
  factory _$$ResetCopyWith(_$Reset value, $Res Function(_$Reset) then) =
      __$$ResetCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$ResetCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$Reset>
    implements _$$ResetCopyWith<$Res> {
  __$$ResetCopyWithImpl(_$Reset _value, $Res Function(_$Reset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$Reset(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Reset implements Reset {
  const _$Reset({required this.duration});

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
            other is _$Reset &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetCopyWith<_$Reset> get copyWith =>
      __$$ResetCopyWithImpl<_$Reset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return reset(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return reset?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
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
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements TimerEvent {
  const factory Reset({required final int duration}) = _$Reset;

  int get duration;
  @JsonKey(ignore: true)
  _$$ResetCopyWith<_$Reset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TickedCopyWith<$Res> {
  factory _$$TickedCopyWith(_$Ticked value, $Res Function(_$Ticked) then) =
      __$$TickedCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TickedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$Ticked>
    implements _$$TickedCopyWith<$Res> {
  __$$TickedCopyWithImpl(_$Ticked _value, $Res Function(_$Ticked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$Ticked(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Ticked implements Ticked {
  const _$Ticked({required this.duration});

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
            other is _$Ticked &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TickedCopyWith<_$Ticked> get copyWith =>
      __$$TickedCopyWithImpl<_$Ticked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return ticked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return ticked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
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
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class Ticked implements TimerEvent {
  const factory Ticked({required final int duration}) = _$Ticked;

  int get duration;
  @JsonKey(ignore: true)
  _$$TickedCopyWith<_$Ticked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedDurationCopyWith<$Res> {
  factory _$$UpdatedDurationCopyWith(
          _$UpdatedDuration value, $Res Function(_$UpdatedDuration) then) =
      __$$UpdatedDurationCopyWithImpl<$Res>;
  @useResult
  $Res call({int? duration, TimerType? timerType});
}

/// @nodoc
class __$$UpdatedDurationCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$UpdatedDuration>
    implements _$$UpdatedDurationCopyWith<$Res> {
  __$$UpdatedDurationCopyWithImpl(
      _$UpdatedDuration _value, $Res Function(_$UpdatedDuration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? timerType = freezed,
  }) {
    return _then(_$UpdatedDuration(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      timerType: freezed == timerType
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType?,
    ));
  }
}

/// @nodoc

class _$UpdatedDuration implements UpdatedDuration {
  const _$UpdatedDuration({this.duration, this.timerType});

  @override
  final int? duration;
  @override
  final TimerType? timerType;

  @override
  String toString() {
    return 'TimerEvent.updateTimer(duration: $duration, timerType: $timerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedDuration &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.timerType, timerType) ||
                other.timerType == timerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, timerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedDurationCopyWith<_$UpdatedDuration> get copyWith =>
      __$$UpdatedDurationCopyWithImpl<_$UpdatedDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) started,
    required TResult Function() paused,
    required TResult Function() resumed,
    required TResult Function() skipped,
    required TResult Function(int duration) reset,
    required TResult Function(int duration) ticked,
    required TResult Function(int? duration, TimerType? timerType) updateTimer,
  }) {
    return updateTimer(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? started,
    TResult? Function()? paused,
    TResult? Function()? resumed,
    TResult? Function()? skipped,
    TResult? Function(int duration)? reset,
    TResult? Function(int duration)? ticked,
    TResult? Function(int? duration, TimerType? timerType)? updateTimer,
  }) {
    return updateTimer?.call(duration, timerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? started,
    TResult Function()? paused,
    TResult Function()? resumed,
    TResult Function()? skipped,
    TResult Function(int duration)? reset,
    TResult Function(int duration)? ticked,
    TResult Function(int? duration, TimerType? timerType)? updateTimer,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(duration, timerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Paused value) paused,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Skipped value) skipped,
    required TResult Function(Reset value) reset,
    required TResult Function(Ticked value) ticked,
    required TResult Function(UpdatedDuration value) updateTimer,
  }) {
    return updateTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Paused value)? paused,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Skipped value)? skipped,
    TResult? Function(Reset value)? reset,
    TResult? Function(Ticked value)? ticked,
    TResult? Function(UpdatedDuration value)? updateTimer,
  }) {
    return updateTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Paused value)? paused,
    TResult Function(Resumed value)? resumed,
    TResult Function(Skipped value)? skipped,
    TResult Function(Reset value)? reset,
    TResult Function(Ticked value)? ticked,
    TResult Function(UpdatedDuration value)? updateTimer,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(this);
    }
    return orElse();
  }
}

abstract class UpdatedDuration implements TimerEvent {
  const factory UpdatedDuration(
      {final int? duration, final TimerType? timerType}) = _$UpdatedDuration;

  int? get duration;
  TimerType? get timerType;
  @JsonKey(ignore: true)
  _$$UpdatedDurationCopyWith<_$UpdatedDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerState {
  TimerStatus get status => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get timerCompletedCounter => throw _privateConstructorUsedError;
  TimerType get timerType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call(
      {TimerStatus status,
      int duration,
      int timerCompletedCounter,
      TimerType timerType});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? duration = null,
    Object? timerCompletedCounter = null,
    Object? timerType = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerCompletedCounter: null == timerCompletedCounter
          ? _value.timerCompletedCounter
          : timerCompletedCounter // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: null == timerType
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerStateCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$_TimerStateCopyWith(
          _$_TimerState value, $Res Function(_$_TimerState) then) =
      __$$_TimerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimerStatus status,
      int duration,
      int timerCompletedCounter,
      TimerType timerType});
}

/// @nodoc
class __$$_TimerStateCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_TimerState>
    implements _$$_TimerStateCopyWith<$Res> {
  __$$_TimerStateCopyWithImpl(
      _$_TimerState _value, $Res Function(_$_TimerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? duration = null,
    Object? timerCompletedCounter = null,
    Object? timerType = null,
  }) {
    return _then(_$_TimerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      timerCompletedCounter: null == timerCompletedCounter
          ? _value.timerCompletedCounter
          : timerCompletedCounter // ignore: cast_nullable_to_non_nullable
              as int,
      timerType: null == timerType
          ? _value.timerType
          : timerType // ignore: cast_nullable_to_non_nullable
              as TimerType,
    ));
  }
}

/// @nodoc

class _$_TimerState implements _TimerState {
  const _$_TimerState(
      {required this.status,
      required this.duration,
      required this.timerCompletedCounter,
      required this.timerType});

  @override
  final TimerStatus status;
  @override
  final int duration;
  @override
  final int timerCompletedCounter;
  @override
  final TimerType timerType;

  @override
  String toString() {
    return 'TimerState(status: $status, duration: $duration, timerCompletedCounter: $timerCompletedCounter, timerType: $timerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.timerCompletedCounter, timerCompletedCounter) ||
                other.timerCompletedCounter == timerCompletedCounter) &&
            (identical(other.timerType, timerType) ||
                other.timerType == timerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, duration, timerCompletedCounter, timerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerStateCopyWith<_$_TimerState> get copyWith =>
      __$$_TimerStateCopyWithImpl<_$_TimerState>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {required final TimerStatus status,
      required final int duration,
      required final int timerCompletedCounter,
      required final TimerType timerType}) = _$_TimerState;

  @override
  TimerStatus get status;
  @override
  int get duration;
  @override
  int get timerCompletedCounter;
  @override
  TimerType get timerType;
  @override
  @JsonKey(ignore: true)
  _$$_TimerStateCopyWith<_$_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
