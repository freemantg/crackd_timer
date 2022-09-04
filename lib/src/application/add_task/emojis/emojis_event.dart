part of 'emojis_bloc.dart';

@freezed
class EmojisEvent with _$EmojisEvent {
  const factory EmojisEvent.started() = _Started;
  const factory EmojisEvent.emojisReceived(List<Emoji> emojis) =
      _EmojisRecieved;
}
