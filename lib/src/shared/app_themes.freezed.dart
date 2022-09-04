// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_themes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppTheme {
  bool get isDark => throw _privateConstructorUsedError;
  Color get colorSchemeSeed => throw _privateConstructorUsedError;
  ThemeType get themeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res>;
  $Res call({bool isDark, Color colorSchemeSeed, ThemeType themeType});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res> implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  final AppTheme _value;
  // ignore: unused_field
  final $Res Function(AppTheme) _then;

  @override
  $Res call({
    Object? isDark = freezed,
    Object? colorSchemeSeed = freezed,
    Object? themeType = freezed,
  }) {
    return _then(_value.copyWith(
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      colorSchemeSeed: colorSchemeSeed == freezed
          ? _value.colorSchemeSeed
          : colorSchemeSeed // ignore: cast_nullable_to_non_nullable
              as Color,
      themeType: themeType == freezed
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
    ));
  }
}

/// @nodoc
abstract class _$$_AppThemeCopyWith<$Res> implements $AppThemeCopyWith<$Res> {
  factory _$$_AppThemeCopyWith(
          _$_AppTheme value, $Res Function(_$_AppTheme) then) =
      __$$_AppThemeCopyWithImpl<$Res>;
  @override
  $Res call({bool isDark, Color colorSchemeSeed, ThemeType themeType});
}

/// @nodoc
class __$$_AppThemeCopyWithImpl<$Res> extends _$AppThemeCopyWithImpl<$Res>
    implements _$$_AppThemeCopyWith<$Res> {
  __$$_AppThemeCopyWithImpl(
      _$_AppTheme _value, $Res Function(_$_AppTheme) _then)
      : super(_value, (v) => _then(v as _$_AppTheme));

  @override
  _$_AppTheme get _value => super._value as _$_AppTheme;

  @override
  $Res call({
    Object? isDark = freezed,
    Object? colorSchemeSeed = freezed,
    Object? themeType = freezed,
  }) {
    return _then(_$_AppTheme(
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      colorSchemeSeed: colorSchemeSeed == freezed
          ? _value.colorSchemeSeed
          : colorSchemeSeed // ignore: cast_nullable_to_non_nullable
              as Color,
      themeType: themeType == freezed
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
    ));
  }
}

/// @nodoc

class _$_AppTheme extends _AppTheme {
  _$_AppTheme(
      {required this.isDark,
      required this.colorSchemeSeed,
      required this.themeType})
      : super._();

  @override
  final bool isDark;
  @override
  final Color colorSchemeSeed;
  @override
  final ThemeType themeType;

  @override
  String toString() {
    return 'AppTheme(isDark: $isDark, colorSchemeSeed: $colorSchemeSeed, themeType: $themeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTheme &&
            const DeepCollectionEquality().equals(other.isDark, isDark) &&
            const DeepCollectionEquality()
                .equals(other.colorSchemeSeed, colorSchemeSeed) &&
            const DeepCollectionEquality().equals(other.themeType, themeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDark),
      const DeepCollectionEquality().hash(colorSchemeSeed),
      const DeepCollectionEquality().hash(themeType));

  @JsonKey(ignore: true)
  @override
  _$$_AppThemeCopyWith<_$_AppTheme> get copyWith =>
      __$$_AppThemeCopyWithImpl<_$_AppTheme>(this, _$identity);
}

abstract class _AppTheme extends AppTheme {
  factory _AppTheme(
      {required final bool isDark,
      required final Color colorSchemeSeed,
      required final ThemeType themeType}) = _$_AppTheme;
  _AppTheme._() : super._();

  @override
  bool get isDark;
  @override
  Color get colorSchemeSeed;
  @override
  ThemeType get themeType;
  @override
  @JsonKey(ignore: true)
  _$$_AppThemeCopyWith<_$_AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
