// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Emoji _$EmojiFromJson(Map<String, dynamic> json) {
  return _Emoji.fromJson(json);
}

/// @nodoc
mixin _$Emoji {
  String get emoji => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiCopyWith<Emoji> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiCopyWith<$Res> {
  factory $EmojiCopyWith(Emoji value, $Res Function(Emoji) then) =
      _$EmojiCopyWithImpl<$Res>;
  $Res call({String emoji, String category});
}

/// @nodoc
class _$EmojiCopyWithImpl<$Res> implements $EmojiCopyWith<$Res> {
  _$EmojiCopyWithImpl(this._value, this._then);

  final Emoji _value;
  // ignore: unused_field
  final $Res Function(Emoji) _then;

  @override
  $Res call({
    Object? emoji = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmojiCopyWith<$Res> implements $EmojiCopyWith<$Res> {
  factory _$$_EmojiCopyWith(_$_Emoji value, $Res Function(_$_Emoji) then) =
      __$$_EmojiCopyWithImpl<$Res>;
  @override
  $Res call({String emoji, String category});
}

/// @nodoc
class __$$_EmojiCopyWithImpl<$Res> extends _$EmojiCopyWithImpl<$Res>
    implements _$$_EmojiCopyWith<$Res> {
  __$$_EmojiCopyWithImpl(_$_Emoji _value, $Res Function(_$_Emoji) _then)
      : super(_value, (v) => _then(v as _$_Emoji));

  @override
  _$_Emoji get _value => super._value as _$_Emoji;

  @override
  $Res call({
    Object? emoji = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Emoji(
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Emoji extends _Emoji {
  const _$_Emoji({required this.emoji, required this.category}) : super._();

  factory _$_Emoji.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiFromJson(json);

  @override
  final String emoji;
  @override
  final String category;

  @override
  String toString() {
    return 'Emoji(emoji: $emoji, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emoji &&
            const DeepCollectionEquality().equals(other.emoji, emoji) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emoji),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      __$$_EmojiCopyWithImpl<_$_Emoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiToJson(
      this,
    );
  }
}

abstract class _Emoji extends Emoji {
  const factory _Emoji(
      {required final String emoji, required final String category}) = _$_Emoji;
  const _Emoji._() : super._();

  factory _Emoji.fromJson(Map<String, dynamic> json) = _$_Emoji.fromJson;

  @override
  String get emoji;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      throw _privateConstructorUsedError;
}
