import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/emojis/emoji.dart';

class EmojiRepository {
  static const emojiJson = 'assets/emojis/emojis.json';

  Future<String> getJson() => rootBundle.loadString(emojiJson);

  Future<List<Emoji>> getEmojis() async {
    var emojisData = (json.decode(await getJson()));

    return (emojisData as List).map((e) => Emoji.fromJson(e)).toList();
  }

  Future<List<String>> getCategories() async {
    final emojis = await getEmojis();
    final categories = emojis.map((e) => e.category).toSet().toList();
    return categories;
  }
}
