part of 'emojis_bloc.dart';

@freezed
class EmojisState with _$EmojisState {
  const factory EmojisState.initial() = Initial;
  const factory EmojisState.loadInProgress() = EmojisLoadInProgress;
  const factory EmojisState.loadSuccess(List<Emoji> emojis) = LoadSuccess;
  const factory EmojisState.loadFailure(Exception failure) = LoadFailure;
}
