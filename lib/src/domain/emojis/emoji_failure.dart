import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji_failure.freezed.dart';

@freezed
class EmojiFailure with _$EmojiFailure {
  const factory EmojiFailure.loadError(String message) = LoadError;
  const factory EmojiFailure.decodeError(String message) = DecodeError;
  const factory EmojiFailure.parsingError(String message) = ParsingError;
}
