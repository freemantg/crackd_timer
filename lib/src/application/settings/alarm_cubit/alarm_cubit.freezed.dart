// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  @JsonKey(ignore: true)
  $AlarmStateCopyWith<AlarmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmStateCopyWith<$Res> {
  factory $AlarmStateCopyWith(
          AlarmState value, $Res Function(AlarmState) then) =
      _$AlarmStateCopyWithImpl<$Res>;
  $Res call({AlarmSound alarmSound, bool tickingSound});
}

/// @nodoc
class _$AlarmStateCopyWithImpl<$Res> implements $AlarmStateCopyWith<$Res> {
  _$AlarmStateCopyWithImpl(this._value, this._then);

  final AlarmState _value;
  // ignore: unused_field
  final $Res Function(AlarmState) _then;

  @override
  $Res call({
    Object? alarmSound = freezed,
    Object? tickingSound = freezed,
  }) {
    return _then(_value.copyWith(
      alarmSound: alarmSound == freezed
          ? _value.alarmSound
          : alarmSound // ignore: cast_nullable_to_non_nullable
              as AlarmSound,
      tickingSound: tickingSound == freezed
          ? _value.tickingSound
          : tickingSound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AlarmCubitStateCopyWith<$Res>
    implements $AlarmStateCopyWith<$Res> {
  factory _$$_AlarmCubitStateCopyWith(
          _$_AlarmCubitState value, $Res Function(_$_AlarmCubitState) then) =
      __$$_AlarmCubitStateCopyWithImpl<$Res>;
  @override
  $Res call({AlarmSound alarmSound, bool tickingSound});
}

/// @nodoc
class __$$_AlarmCubitStateCopyWithImpl<$Res>
    extends _$AlarmStateCopyWithImpl<$Res>
    implements _$$_AlarmCubitStateCopyWith<$Res> {
  __$$_AlarmCubitStateCopyWithImpl(
      _$_AlarmCubitState _value, $Res Function(_$_AlarmCubitState) _then)
      : super(_value, (v) => _then(v as _$_AlarmCubitState));

  @override
  _$_AlarmCubitState get _value => super._value as _$_AlarmCubitState;

  @override
  $Res call({
    Object? alarmSound = freezed,
    Object? tickingSound = freezed,
  }) {
    return _then(_$_AlarmCubitState(
      alarmSound: alarmSound == freezed
          ? _value.alarmSound
          : alarmSound // ignore: cast_nullable_to_non_nullable
              as AlarmSound,
      tickingSound: tickingSound == freezed
          ? _value.tickingSound
          : tickingSound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AlarmCubitState implements _AlarmCubitState {
  const _$_AlarmCubitState(
      {required this.alarmSound, required this.tickingSound});

  @override
  final AlarmSound alarmSound;
  @override
  final bool tickingSound;

  @override
  String toString() {
    return 'AlarmState(alarmSound: $alarmSound, tickingSound: $tickingSound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmCubitState &&
            const DeepCollectionEquality()
                .equals(other.alarmSound, alarmSound) &&
            const DeepCollectionEquality()
                .equals(other.tickingSound, tickingSound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(alarmSound),
      const DeepCollectionEquality().hash(tickingSound));

  @JsonKey(ignore: true)
  @override
  _$$_AlarmCubitStateCopyWith<_$_AlarmCubitState> get copyWith =>
      __$$_AlarmCubitStateCopyWithImpl<_$_AlarmCubitState>(this, _$identity);
}

abstract class _AlarmCubitState implements AlarmState {
  const factory _AlarmCubitState(
      {required final AlarmSound alarmSound,
      required final bool tickingSound}) = _$_AlarmCubitState;

  @override
  AlarmSound get alarmSound;
  @override
  bool get tickingSound;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmCubitStateCopyWith<_$_AlarmCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
