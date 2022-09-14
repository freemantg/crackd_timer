import 'package:audioplayers/audioplayers.dart';

class AudioRepository {
  final AudioPlayer _audioPlayer;

  AudioRepository(this._audioPlayer);

  Future<void> play(String path) async {
    await _audioPlayer.play(AssetSource('sounds/$path'));
  }
}
