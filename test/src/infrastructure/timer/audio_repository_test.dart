// Import the generated mocks library
import 'package:audioplayers/audioplayers.dart';
import 'package:crackd_timer/src/infrastructure/timer/audio_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'audio_repository_test.mocks.dart';

@GenerateMocks([AudioPlayer])
void main() {
  late AudioRepository audioRepository;
  late MockAudioPlayer mockAudioPlayer;

  setUp(() {
    // Change `mockAudioPlayer` to the generated class, MockAudioPlayer
    mockAudioPlayer = MockAudioPlayer();
    audioRepository = AudioRepository(mockAudioPlayer);
  });

  group(
    'play',
    () {
      const testFilePath = 'test.mp3';

      test('should play audio when valid file path is provided', () async {
        when(mockAudioPlayer.play(any)).thenAnswer((_) async => {});

        final result = await audioRepository.play(testFilePath);

        verify(mockAudioPlayer.play(any)).called(1);
        expect(result, equals(right(unit)));
      });
    },
  );
}
