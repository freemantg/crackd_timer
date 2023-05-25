// Import the generated mocks library

import 'package:audioplayers/audioplayers.dart';
import 'package:crackd_timer/src/domain/audio/audio_playback_failure.dart';
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

      test('should return fileNotFound when file is not found', () async {
        when(mockAudioPlayer.source).thenReturn(AssetSource(testFilePath));
        when(mockAudioPlayer.play(any)).thenThrow(
            AudioPlayerException(mockAudioPlayer, cause: 'File not found'));

        final result = await audioRepository.play(testFilePath);

        verify(mockAudioPlayer.play(any)).called(1);
        expect(result, left(const AudioPlaybackFailure.fileNotFound()));
      });

         test('should return fileNotFound when file is not found', () async {
        when(mockAudioPlayer.source).thenReturn(AssetSource(testFilePath));
        when(mockAudioPlayer.play(any)).thenThrow(
            AudioPlayerException(mockAudioPlayer, cause: 'File not found'));

        final result = await audioRepository.play(testFilePath);

        verify(mockAudioPlayer.play(any)).called(1);
        expect(result, left(const AudioPlaybackFailure.fileNotFound()));
      });

      test('should return unsupportedFormat when file format is unsupported',
          () async {
        when(mockAudioPlayer.source).thenReturn(AssetSource(testFilePath));
        when(mockAudioPlayer.play(any)).thenThrow(
            AudioPlayerException(mockAudioPlayer, cause: 'Unsupported format'));

        final result = await audioRepository.play(testFilePath);

        verify(mockAudioPlayer.play(any)).called(1);
        expect(result, left(const AudioPlaybackFailure.unsupportedFormat()));
      });


test(
          'should return invalidState when audio player is in an invalid state',
          () async {
        when(mockAudioPlayer.source).thenReturn(AssetSource(testFilePath));
        when(mockAudioPlayer.play(any)).thenThrow(
            AudioPlayerException(mockAudioPlayer, cause: 'Invalid state'));

        final result = await audioRepository.play(testFilePath);

        verify(mockAudioPlayer.play(any)).called(1);
        expect(result, left(const AudioPlaybackFailure.invalidState()));
      });


test('should return unknown when an unknown error occurs', () async {
        when(mockAudioPlayer.source).thenReturn(AssetSource(testFilePath));
        when(mockAudioPlayer.play(any)).thenThrow(Exception('Unknown error'));

        final result = await audioRepository.play(testFilePath);

        verify(mockAudioPlayer.play(any)).called(1);
        expect(result, left(const AudioPlaybackFailure.unknown()));
      });

    },
  );
}
