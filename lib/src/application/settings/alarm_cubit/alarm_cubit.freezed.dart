// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlarmState {
  AlarmSound get alarmSound => throw _privateConstructorUsedError;
  bool get tickingSound => throw _privateConstructorUsedError;
  AudioPlaybackFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlarmStateCopyWith<AlarmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmStateCopyWith<$Res> {
  factory $AlarmStateCopyWith(
          AlarmState value, $Res Function(AlarmState) then) =
      _$AlarmStateCopyWithImpl<$Res, AlarmState>;
  @useResult
  $Res call(
      {AlarmSound alarmSound,
      bool tickingSound,
      AudioPlaybackFailure? failure});

  $AudioPlaybackFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AlarmStateCopyWithImpl<$Res, $Val extends AlarmState>
    implements $AlarmStateCopyWith<$Res> {
  _$AlarmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmSound = null,
    Object? tickingSound = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      alarmSound: null == alarmSound
          ? _value.alarmSound
          : alarmSound // ignore: cast_nullable_to_non_nullable
              as AlarmSound,
      tickingSound: null == tickingSound
          ? _value.tickingSound
          : tickingSound // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AudioPlaybackFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioPlaybackFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AudioPlaybackFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlarmStateCopyWith<$Res>
    implements $AlarmStateCopyWith<$Res> {
  factory _$$_AlarmStateCopyWith(
          _$_AlarmState value, $Res Function(_$_AlarmState) then) =
      __$$_AlarmStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AlarmSound alarmSound,
      bool tickingSound,
      AudioPlaybackFailure? failure});

  @override
  $AudioPlaybackFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_AlarmStateCopyWithImpl<$Res>
    extends _$AlarmStateCopyWithImpl<$Res, _$_AlarmState>
    implements _$$_AlarmStateCopyWith<$Res> {
  __$$_AlarmStateCopyWithImpl(
      _$_AlarmState _value, $Res Function(_$_AlarmState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmSound = null,
    Object? tickingSound = null,
    Object? failure = freezed,
  }) {
    return _then(_$_AlarmState(
      alarmSound: null == alarmSound
          ? _value.alarmSound
          : alarmSound // ignore: cast_nullable_to_non_nullable
              as AlarmSound,
      tickingSound: null == tickingSound
          ? _value.tickingSound
          : tickingSound // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AudioPlaybackFailure?,
    ));
  }
}

/// @nodoc

class _$_AlarmState implements _AlarmState {
  const _$_AlarmState(
      {required this.alarmSound, required this.tickingSound, this.failure});

  @override
  final AlarmSound alarmSound;
  @override
  final bool tickingSound;
  @override
  final AudioPlaybackFailure? failure;

  @override
  String toString() {
    return 'AlarmState(alarmSound: $alarmSound, tickingSound: $tickingSound, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmState &&
            (identical(other.alarmSound, alarmSound) ||
                other.alarmSound == alarmSound) &&
            (identical(other.tickingSound, tickingSound) ||
                other.tickingSound == tickingSound) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, alarmSound, tickingSound, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmStateCopyWith<_$_AlarmState> get copyWith =>
      __$$_AlarmStateCopyWithImpl<_$_AlarmState>(this, _$identity);
}

abstract class _AlarmState implements AlarmState {
  const factory _AlarmState(
      {required final AlarmSound alarmSound,
      required final bool tickingSound,
      final AudioPlaybackFailure? failure}) = _$_AlarmState;

  @override
  AlarmSound get alarmSound;
  @override
  bool get tickingSound;
  @override
  AudioPlaybackFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmStateCopyWith<_$_AlarmState> get copyWith =>
      throw _privateConstructorUsedError;
}
