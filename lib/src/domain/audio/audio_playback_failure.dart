import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_playback_failure.freezed.dart';

@freezed
class AudioPlaybackFailure with _$AudioPlaybackFailure {
  const factory AudioPlaybackFailure.fileNotFound() = FileNotFound;
  const factory AudioPlaybackFailure.unsupportedFormat() = UnsupportedFormat;
  const factory AudioPlaybackFailure.invalidState() = InvalidState;
  const factory AudioPlaybackFailure.unknown() = Unknown;
}
