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

  (test(
    'returns correctJSON when getJson is called',
    () async {
      const testJson = '{test:json}';
      when(mockAssetBundle.loadString(any)).thenAnswer((_) async => testJson);

      final result = await emojiRepository.getJson();
      expectLater(result, equals(const Right(testJson)));
      verify(mockAssetBundle.loadString(any)).called(1);
    },
  ));

  test('returns LoadError when there is an exception', () async {
    String exceptionMessage = 'Test Exception';
    when(mockAssetBundle.loadString(any))
        .thenThrow(Exception(exceptionMessage));

    final result = await emojiRepository.getJson();

    expect(result,
        equals(Left(EmojiFailure.loadError('Exception: $exceptionMessage'))));
    verify(mockAssetBundle.loadString(any)).called(1);
  });
}
