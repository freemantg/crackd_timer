import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/add_task/emojis/emojis_bloc.dart';
import '../../../infrastructure/emojis/emoji_repository.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import 'color_selector.dart';
import 'icon_selector.dart';

class TitleTextFormField extends StatelessWidget {
  const TitleTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Title...',
        filled: true,
        fillColor: theme.colorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Corners.s10Radius),
          borderSide: BorderSide.none,
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        prefixIcon: GestureDetector(
          onTap: () => _showCustomizeModalButtonSheet(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.m),
            child: Text('🍅', style: TextStyles.h1),
          ),
        ),
      ),
    );
  }

  _showCustomizeModalButtonSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Corners.s10Radius),
        ),
        context: context,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.8,
            child: Column(
              children: [
                const ColorSelector(),
                _StyledContainer(
                  child: BlocProvider(
                    create: (context) => EmojisBloc(EmojiRepository())
                      ..add(const EmojisEvent.started()),
                    child: BlocBuilder<EmojisBloc, EmojisState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          loadSuccess: (state) =>
                              IconSelector(emojis: state.emojis),
                          orElse: () => const CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class _StyledContainer extends StatelessWidget {
  final Widget child;

  const _StyledContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        color: theme.cardColor,
        padding: const EdgeInsets.only(
          top: Insets.m,
          left: Insets.l,
          right: Insets.l,
        ),
        child: child,
      ),
    );
  }
}
