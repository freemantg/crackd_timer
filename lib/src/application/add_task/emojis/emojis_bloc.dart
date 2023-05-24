import 'package:bloc/bloc.dart';
import 'package:crackd_timer/src/domain/emojis/emoji_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/emojis/emoji.dart';
import '../../../infrastructure/emojis/emoji_repository.dart';

part 'emojis_event.dart';
part 'emojis_state.dart';
part 'emojis_bloc.freezed.dart';

class EmojisBloc extends Bloc<EmojisEvent, EmojisState> {
  final EmojiRepository _emojiRepository;

  EmojisBloc(this._emojiRepository) : super(const Initial()) {
    on<EmojisEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const EmojisState.loadInProgress());
          final result = await _emojiRepository.getEmojis();
          result.fold(
            (failure) => emit(EmojisState.loadFailure(failure)),
            (emojis) => add(EmojisEvent.emojisReceived(emojis)),
          );
        },
        emojisReceived: (emojis) {
          emit(EmojisState.loadSuccess(emojis));
        },
      );
    });
  }
}
