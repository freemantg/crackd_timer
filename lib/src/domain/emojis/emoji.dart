import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

@freezed
class Emoji with _$Emoji {
  const Emoji._();
  @JsonSerializable(explicitToJson: true)
  const factory Emoji({
    required String emoji,
    required String category,
  }) = _Emoji;

  factory Emoji.fromJson(Map<String, dynamic> json) => _$EmojiFromJson(json);

  factory Emoji.initial() => const Emoji(
        emoji: '🍅',
        category: 'Food & Drink',
      );
}
