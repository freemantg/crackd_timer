import 'package:crackd_timer/src/domain/emojis/emoji.dart';
import 'package:crackd_timer/src/domain/emojis/emoji_failure.dart';
import 'package:crackd_timer/src/infrastructure/emojis/emoji_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'emoji_repository_test.mocks.dart';

@GenerateMocks([AssetBundle])
void main() {
  late EmojiRepository emojiRepository;
  late MockAssetBundle mockAssetBundle;

  setUp(() {
    mockAssetBundle = MockAssetBundle();
    emojiRepository = EmojiRepository(mockAssetBundle);
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  group(
    'getJson',
    () {
      test(
        'returns correctJSON when getJson is called',
        () async {
          const testJson = '{test:json}';
          when(mockAssetBundle.loadString(any))
              .thenAnswer((_) async => testJson);

          final result = await emojiRepository.getJson();
          expectLater(result, equals(const Right(testJson)));
          verify(mockAssetBundle.loadString(any)).called(1);
        },
      );

      test('returns LoadError when there is an exception', () async {
        String exceptionMessage = 'Test Exception';
        when(mockAssetBundle.loadString(any))
            .thenThrow(Exception(exceptionMessage));

        final result = await emojiRepository.getJson();

        expect(
            result,
            equals(
                Left(EmojiFailure.loadError('Exception: $exceptionMessage'))));
        verify(mockAssetBundle.loadString(any)).called(1);
      });
    },
  );

  group('getEmojis', () {
    const jsonString = '[{"emoji": "🥚", "category": "Food & Drink"}]';
    final emojis = [const Emoji(emoji: '🥚', category: 'Food & Drink')];

    test('should return Right(emojis) when decoding is successful', () async {
      when(mockAssetBundle.loadString(any)).thenAnswer((_) async => jsonString);

      final result = await emojiRepository.getEmojis();

      result.fold(
        (l) => expect(l, isNull),
        (r) => expect(r, emojis),
      );
    });

    test(
        'should return Left(EmojiFailure.decodeError) when decoding throws an exception',
        () async {
      when(mockAssetBundle.loadString(any))
          .thenAnswer((_) async => '{not: valid, json: true}');

      final result = await emojiRepository.getEmojis();

      result.fold(
        (l) => expect(l, isA<EmojiFailure>()),
        (r) => expect(r, isNull),
      );
    });
  });

  group('getCategories', () {
    const jsonString = '[{"emoji": "🥚", "category": "Food & Drink"}]';
    final categories = ['Food & Drink'];

    test(
        'should return Right(categories) when emojis are successfully obtained',
        () async {
      when(mockAssetBundle.loadString(any)).thenAnswer((_) async => jsonString);

      final result = await emojiRepository.getCategories();

      result.fold(
        (l) => expect(l, isNull),
        (r) => expect(r, categories),
      );
    });

    test('should return Left(EmojiFailure) when getEmojis fails', () async {
      when(mockAssetBundle.loadString(any))
          .thenThrow(PlatformException(code: "ERROR_LOADING_JSON"));

      final result = await emojiRepository.getCategories();

      result.fold(
        (l) => expect(l, isA<EmojiFailure>()),
        (r) => expect(r, isNull),
      );
    });
  });
}
