import 'package:audioplayers/audioplayers.dart';
import 'package:dartz/dartz.dart';

import '../../domain/audio/audio_playback_failure.dart';

class AudioRepository {
  final AudioPlayer _audioPlayer;

  AudioRepository(this._audioPlayer);

  Future<Either<AudioPlaybackFailure, Unit>> play(String path) async {
    try {
      await _audioPlayer.play(AssetSource('sounds/$path'));
      return right(unit);
    } catch (e) {
      if (e is AudioPlayerException) {
        if (e.cause == 'File not found') {
          return left(const AudioPlaybackFailure.fileNotFound());
        } else if (e.cause == 'Unsupported format') {
          return left(const AudioPlaybackFailure.unsupportedFormat());
        } else if (e.cause == 'Invalid state') {
          return left(const AudioPlaybackFailure.invalidState());
        }
      }
      return left(const AudioPlaybackFailure.unknown());
    }
  }
}
