// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmojiFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) decodeError,
    required TResult Function(String message) parsingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? loadError,
    TResult? Function(String message)? decodeError,
    TResult? Function(String message)? parsingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? decodeError,
    TResult Function(String message)? parsingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadError value) loadError,
    required TResult Function(DecodeError value) decodeError,
    required TResult Function(ParsingError value) parsingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadError value)? loadError,
    TResult? Function(DecodeError value)? decodeError,
    TResult? Function(ParsingError value)? parsingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadError value)? loadError,
    TResult Function(DecodeError value)? decodeError,
    TResult Function(ParsingError value)? parsingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmojiFailureCopyWith<EmojiFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiFailureCopyWith<$Res> {
  factory $EmojiFailureCopyWith(
          EmojiFailure value, $Res Function(EmojiFailure) then) =
      _$EmojiFailureCopyWithImpl<$Res, EmojiFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$EmojiFailureCopyWithImpl<$Res, $Val extends EmojiFailure>
    implements $EmojiFailureCopyWith<$Res> {
  _$EmojiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadErrorCopyWith<$Res>
    implements $EmojiFailureCopyWith<$Res> {
  factory _$$LoadErrorCopyWith(
          _$LoadError value, $Res Function(_$LoadError) then) =
      __$$LoadErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadErrorCopyWithImpl<$Res>
    extends _$EmojiFailureCopyWithImpl<$Res, _$LoadError>
    implements _$$LoadErrorCopyWith<$Res> {
  __$$LoadErrorCopyWithImpl(
      _$LoadError _value, $Res Function(_$LoadError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadError implements LoadError {
  const _$LoadError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EmojiFailure.loadError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadErrorCopyWith<_$LoadError> get copyWith =>
      __$$LoadErrorCopyWithImpl<_$LoadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) decodeError,
    required TResult Function(String message) parsingError,
  }) {
    return loadError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? loadError,
    TResult? Function(String message)? decodeError,
    TResult? Function(String message)? parsingError,
  }) {
    return loadError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? decodeError,
    TResult Function(String message)? parsingError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadError value) loadError,
    required TResult Function(DecodeError value) decodeError,
    required TResult Function(ParsingError value) parsingError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadError value)? loadError,
    TResult? Function(DecodeError value)? decodeError,
    TResult? Function(ParsingError value)? parsingError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadError value)? loadError,
    TResult Function(DecodeError value)? decodeError,
    TResult Function(ParsingError value)? parsingError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class LoadError implements EmojiFailure {
  const factory LoadError(final String message) = _$LoadError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$LoadErrorCopyWith<_$LoadError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecodeErrorCopyWith<$Res>
    implements $EmojiFailureCopyWith<$Res> {
  factory _$$DecodeErrorCopyWith(
          _$DecodeError value, $Res Function(_$DecodeError) then) =
      __$$DecodeErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DecodeErrorCopyWithImpl<$Res>
    extends _$EmojiFailureCopyWithImpl<$Res, _$DecodeError>
    implements _$$DecodeErrorCopyWith<$Res> {
  __$$DecodeErrorCopyWithImpl(
      _$DecodeError _value, $Res Function(_$DecodeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DecodeError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DecodeError implements DecodeError {
  const _$DecodeError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EmojiFailure.decodeError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecodeError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecodeErrorCopyWith<_$DecodeError> get copyWith =>
      __$$DecodeErrorCopyWithImpl<_$DecodeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) decodeError,
    required TResult Function(String message) parsingError,
  }) {
    return decodeError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? loadError,
    TResult? Function(String message)? decodeError,
    TResult? Function(String message)? parsingError,
  }) {
    return decodeError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? decodeError,
    TResult Function(String message)? parsingError,
    required TResult orElse(),
  }) {
    if (decodeError != null) {
      return decodeError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadError value) loadError,
    required TResult Function(DecodeError value) decodeError,
    required TResult Function(ParsingError value) parsingError,
  }) {
    return decodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadError value)? loadError,
    TResult? Function(DecodeError value)? decodeError,
    TResult? Function(ParsingError value)? parsingError,
  }) {
    return decodeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadError value)? loadError,
    TResult Function(DecodeError value)? decodeError,
    TResult Function(ParsingError value)? parsingError,
    required TResult orElse(),
  }) {
    if (decodeError != null) {
      return decodeError(this);
    }
    return orElse();
  }
}

abstract class DecodeError implements EmojiFailure {
  const factory DecodeError(final String message) = _$DecodeError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DecodeErrorCopyWith<_$DecodeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingErrorCopyWith<$Res>
    implements $EmojiFailureCopyWith<$Res> {
  factory _$$ParsingErrorCopyWith(
          _$ParsingError value, $Res Function(_$ParsingError) then) =
      __$$ParsingErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ParsingErrorCopyWithImpl<$Res>
    extends _$EmojiFailureCopyWithImpl<$Res, _$ParsingError>
    implements _$$ParsingErrorCopyWith<$Res> {
  __$$ParsingErrorCopyWithImpl(
      _$ParsingError _value, $Res Function(_$ParsingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ParsingError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsingError implements ParsingError {
  const _$ParsingError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EmojiFailure.parsingError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsingError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsingErrorCopyWith<_$ParsingError> get copyWith =>
      __$$ParsingErrorCopyWithImpl<_$ParsingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) decodeError,
    required TResult Function(String message) parsingError,
  }) {
    return parsingError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? loadError,
    TResult? Function(String message)? decodeError,
    TResult? Function(String message)? parsingError,
  }) {
    return parsingError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? decodeError,
    TResult Function(String message)? parsingError,
    required TResult orElse(),
  }) {
    if (parsingError != null) {
      return parsingError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadError value) loadError,
    required TResult Function(DecodeError value) decodeError,
    required TResult Function(ParsingError value) parsingError,
  }) {
    return parsingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadError value)? loadError,
    TResult? Function(DecodeError value)? decodeError,
    TResult? Function(ParsingError value)? parsingError,
  }) {
    return parsingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadError value)? loadError,
    TResult Function(DecodeError value)? decodeError,
    TResult Function(ParsingError value)? parsingError,
    required TResult orElse(),
  }) {
    if (parsingError != null) {
      return parsingError(this);
    }
    return orElse();
  }
}

abstract class ParsingError implements EmojiFailure {
  const factory ParsingError(final String message) = _$ParsingError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ParsingErrorCopyWith<_$ParsingError> get copyWith =>
      throw _privateConstructorUsedError;
}
