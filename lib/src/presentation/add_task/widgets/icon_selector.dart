import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/blocs.dart';
import '../../../domain/emojis/emoji.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class IconSelector extends StatelessWidget {
  final List<Emoji> emojis;

  const IconSelector({
    Key? key,
    required this.emojis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final categories = emojis.map((e) => e.category).toSet().toList();

    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            physics: const BouncingScrollPhysics(),
            //INDICATOR
            indicatorColor: theme.primaryColor,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: const EdgeInsets.only(right: Insets.l),
            //LABEL
            labelPadding: const EdgeInsets.only(right: Insets.l),
            labelStyle: TextStyles.h2,
            labelColor: theme.colorScheme.onSurface
                .withOpacity(TextOpacity.mediumEmphasis),
            unselectedLabelColor: theme.highlightColor,
            tabs: categories.map((e) => Tab(text: e)).toList(),
          ),
          Expanded(
            child: TabBarView(
              clipBehavior: Clip.none,
              children: categories.map(
                (category) {
                  final categoryEmojis = emojis
                      .where((emoji) => emoji.category == category)
                      .toList();
                  return _EmojiGridView(emojis: categoryEmojis);
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmojiGridView extends StatelessWidget {
  const _EmojiGridView({
    Key? key,
    required this.emojis,
  }) : super(key: key);

  final List<Emoji> emojis;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: emojis.length,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: Insets.m),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: ((context, index) {
        final emoji = emojis[index];
        return _EmojiTile(emoji: emoji);
      }),
    );
  }
}

class _EmojiTile extends StatelessWidget {
  final Emoji emoji;

  const _EmojiTile({
    required this.emoji,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      builder: (context, state) {
        bool isSelected = state.task.emoji == emoji;

        return GestureDetector(
          onTap: () => context.read<TaskFormBloc>().add(
                TaskFormEvent.emojiChanged(emoji),
              ),
          child: Container(
            decoration: isSelected
                ? BoxDecoration(
                    color: state.task.taskColor,
                    borderRadius: BorderRadius.circular(Corners.s10),
                  )
                : null,
            child: Center(
              child: Text(
                emoji.emoji,
                style: TextStyles.h1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
