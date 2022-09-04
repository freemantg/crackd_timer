import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/infrastructure/emojis/emoji_repository.dart';

import '../../../domain/emojis/emoji.dart';

part 'emojis_event.dart';
part 'emojis_state.dart';
part 'emojis_bloc.freezed.dart';

class EmojisBloc extends Bloc<EmojisEvent, EmojisState> {
  final EmojiRepository _emojiRepository;

  EmojisBloc(this._emojiRepository) : super(const Initial()) {
    on<EmojisEvent>((event, emit) {
      event.when(
        started: () async {
          emit(const EmojisState.loadInProgress());
          final emojis = await _emojiRepository.getEmojis();
          add(EmojisEvent.emojisReceived(emojis));
        },
        emojisReceived: (emojis) {
          emit(EmojisState.loadSuccess(emojis));
        },
      );
    });
  }
}
