// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(UnableToCreate value) unableToCreate,
    required TResult Function(UnableToDelete value) unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(UnableToCreate value)? unableToCreate,
    TResult? Function(UnableToDelete value)? unableToDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(UnableToCreate value)? unableToCreate,
    TResult Function(UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFailureCopyWith<$Res> {
  factory $TaskFailureCopyWith(
          TaskFailure value, $Res Function(TaskFailure) then) =
      _$TaskFailureCopyWithImpl<$Res, TaskFailure>;
}

/// @nodoc
class _$TaskFailureCopyWithImpl<$Res, $Val extends TaskFailure>
    implements $TaskFailureCopyWith<$Res> {
  _$TaskFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res, _$Unexpected>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Unexpected(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TaskFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      __$$UnexpectedCopyWithImpl<_$Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(UnableToCreate value) unableToCreate,
    required TResult Function(UnableToDelete value) unableToDelete,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(UnableToCreate value)? unableToCreate,
    TResult? Function(UnableToDelete value)? unableToDelete,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(UnableToCreate value)? unableToCreate,
    TResult Function(UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements TaskFailure {
  const factory Unexpected({final String? message}) = _$Unexpected;

  String? get message;
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsufficientPermissionsCopyWith<$Res> {
  factory _$$InsufficientPermissionsCopyWith(_$InsufficientPermissions value,
          $Res Function(_$InsufficientPermissions) then) =
      __$$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res, _$InsufficientPermissions>
    implements _$$InsufficientPermissionsCopyWith<$Res> {
  __$$InsufficientPermissionsCopyWithImpl(_$InsufficientPermissions _value,
      $Res Function(_$InsufficientPermissions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString() {
    return 'TaskFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(UnableToCreate value) unableToCreate,
    required TResult Function(UnableToDelete value) unableToDelete,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(UnableToCreate value)? unableToCreate,
    TResult? Function(UnableToDelete value)? unableToDelete,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(UnableToCreate value)? unableToCreate,
    TResult Function(UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements TaskFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

/// @nodoc
abstract class _$$UnableToUpdateCopyWith<$Res> {
  factory _$$UnableToUpdateCopyWith(
          _$UnableToUpdate value, $Res Function(_$UnableToUpdate) then) =
      __$$UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToUpdateCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res, _$UnableToUpdate>
    implements _$$UnableToUpdateCopyWith<$Res> {
  __$$UnableToUpdateCopyWithImpl(
      _$UnableToUpdate _value, $Res Function(_$UnableToUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToUpdate implements UnableToUpdate {
  const _$UnableToUpdate();

  @override
  String toString() {
    return 'TaskFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(UnableToCreate value) unableToCreate,
    required TResult Function(UnableToDelete value) unableToDelete,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(UnableToCreate value)? unableToCreate,
    TResult? Function(UnableToDelete value)? unableToDelete,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(UnableToCreate value)? unableToCreate,
    TResult Function(UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements TaskFailure {
  const factory UnableToUpdate() = _$UnableToUpdate;
}

/// @nodoc
abstract class _$$UnableToCreateCopyWith<$Res> {
  factory _$$UnableToCreateCopyWith(
          _$UnableToCreate value, $Res Function(_$UnableToCreate) then) =
      __$$UnableToCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToCreateCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res, _$UnableToCreate>
    implements _$$UnableToCreateCopyWith<$Res> {
  __$$UnableToCreateCopyWithImpl(
      _$UnableToCreate _value, $Res Function(_$UnableToCreate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToCreate implements UnableToCreate {
  const _$UnableToCreate();

  @override
  String toString() {
    return 'TaskFailure.unableToCreate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unableToCreate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToCreate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToCreate != null) {
      return unableToCreate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(UnableToCreate value) unableToCreate,
    required TResult Function(UnableToDelete value) unableToDelete,
  }) {
    return unableToCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(UnableToCreate value)? unableToCreate,
    TResult? Function(UnableToDelete value)? unableToDelete,
  }) {
    return unableToCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(UnableToCreate value)? unableToCreate,
    TResult Function(UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToCreate != null) {
      return unableToCreate(this);
    }
    return orElse();
  }
}

abstract class UnableToCreate implements TaskFailure {
  const factory UnableToCreate() = _$UnableToCreate;
}

/// @nodoc
abstract class _$$UnableToDeleteCopyWith<$Res> {
  factory _$$UnableToDeleteCopyWith(
          _$UnableToDelete value, $Res Function(_$UnableToDelete) then) =
      __$$UnableToDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToDeleteCopyWithImpl<$Res>
    extends _$TaskFailureCopyWithImpl<$Res, _$UnableToDelete>
    implements _$$UnableToDeleteCopyWith<$Res> {
  __$$UnableToDeleteCopyWithImpl(
      _$UnableToDelete _value, $Res Function(_$UnableToDelete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToDelete implements UnableToDelete {
  const _$UnableToDelete();

  @override
  String toString() {
    return 'TaskFailure.unableToDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() unableToCreate,
    required TResult Function() unableToDelete,
  }) {
    return unableToDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToUpdate,
    TResult? Function()? unableToCreate,
    TResult? Function()? unableToDelete,
  }) {
    return unableToDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? unableToCreate,
    TResult Function()? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToDelete != null) {
      return unableToDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(UnableToCreate value) unableToCreate,
    required TResult Function(UnableToDelete value) unableToDelete,
  }) {
    return unableToDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(UnableToCreate value)? unableToCreate,
    TResult? Function(UnableToDelete value)? unableToDelete,
  }) {
    return unableToDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(UnableToCreate value)? unableToCreate,
    TResult Function(UnableToDelete value)? unableToDelete,
    required TResult orElse(),
  }) {
    if (unableToDelete != null) {
      return unableToDelete(this);
    }
    return orElse();
  }
}

abstract class UnableToDelete implements TaskFailure {
  const factory UnableToDelete() = _$UnableToDelete;
}
