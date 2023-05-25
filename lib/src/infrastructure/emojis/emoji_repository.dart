import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../domain/emojis/emoji.dart';
import '../../domain/emojis/emoji_failure.dart';

class EmojiRepository {
  final AssetBundle assetBundle;

  static const emojiJson = 'assets/emojis/emojis.json';

  EmojiRepository(this.assetBundle);

  Future<Either<EmojiFailure, String>> getJson() async {
    try {
      final jsonStr = await assetBundle.loadString(emojiJson);
      return Right(jsonStr);
    } catch (e) {
      return Left(EmojiFailure.loadError(e.toString()));
    }
  }

  Future<Either<EmojiFailure, List<Emoji>>> getEmojis() async {
    final result = await getJson();
    return result.fold(
      (failure) => Left(failure),
      (jsonStr) {
        try {
          final emojisData = json.decode(jsonStr);
          final emojis =
              (emojisData as List).map((e) => Emoji.fromJson(e)).toList();
          return Right(emojis);
        } catch (e) {
          return Left(EmojiFailure.decodeError(e.toString()));
        }
      },
    );
  }

  Future<Either<EmojiFailure, List<String>>> getCategories() async {
    final result = await getEmojis();
    return result.fold(
      (failure) => Left(failure),
      (emojis) {
        final categories = emojis.map((e) => e.category).toSet().toList();
        return Right(categories);
      },
    );
  }
}
