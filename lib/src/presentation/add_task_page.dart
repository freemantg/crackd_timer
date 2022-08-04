import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:robot_timer/src/shared/icons_list.dart';

import '../shared/styles.dart';
import 'shared/styled_components/styled_app_bar.dart';
import 'shared/styled_components/styled_card.dart';

import 'shared/styled_components/styled_divider.dart';
import 'shared/styled_components/styled_title_subTitle.dart';
import 'shared/styled_components/styled_title_text.dart';
import 'shared/text_styles.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A6DB0),
      appBar: const StyledAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return false;
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(Insets.l),
                      child: StyledTitleAndText(
                        title: 'Hey, Let\'s Pomodoro',
                        text: 'What are you working on?',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(Insets.xl),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Insets.l,
                          vertical: Insets.xl,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Add Task', style: TextStyles.h2),
                            const HSpace(size: Insets.m),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                StyledCard(
                                  paddingInsets: Insets.sm,
                                  child: IconButton(
                                    onPressed: () => showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor:
                                            const Color(0xFF6A6DB0),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(Insets.l),
                                          ),
                                        ),
                                        context: context,
                                        builder: ((context) {
                                          return FractionallySizedBox(
                                            heightFactor: 0.95,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(width: 48.0),
                                                    Text(
                                                      'Pomodoro Icon',
                                                      style: TextStyles.h2
                                                          .copyWith(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      padding: EdgeInsets.zero,
                                                      onPressed: () {},
                                                      icon: const FaIcon(
                                                        FontAwesomeIcons.check,
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                      Insets.l,
                                                      Insets.l,
                                                      Insets.l,
                                                      0,
                                                    ),
                                                    color: Colors.white,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          'Color',
                                                          style: TextStyles.h2,
                                                        ),
                                                        const HSpace(
                                                            size: Insets.l),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left:
                                                                      Insets.l),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Colors
                                                                      .pink,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                height: 24,
                                                                width: 24,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        const StyledDivider(),
                                                        Text(
                                                          'Icon',
                                                          style: TextStyles.h2,
                                                        ),
                                                        Expanded(
                                                          child: GridView.count(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            physics:
                                                                const BouncingScrollPhysics(),
                                                            crossAxisCount: 4,
                                                            children: iconLists
                                                                .map(
                                                                    (icon) =>
                                                                        Center(
                                                                          child: icon == FontAwesomeIcons.bomb
                                                                              ? StyledCard(
                                                                                  paddingInsets: Insets.m,
                                                                                  child: FaIcon(
                                                                                    icon,
                                                                                  ),
                                                                                )
                                                                              : FaIcon(icon),
                                                                        ))
                                                                .toList(),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        })),
                                    icon: const FaIcon(
                                      FontAwesomeIcons.paintbrush,
                                    ),
                                  ),
                                ),
                                const VSpace(size: Insets.sm),
                                const StyledSingleLineTextFormField(),
                              ],
                            ),
                            const HSpace(size: Insets.m),
                            TextFormField(
                              minLines: 5,
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText: 'Note...',
                                filled: true,
                                fillColor: const Color(0xFFE1E5FF),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const StyledDivider(),
                            const StyledTitleAndSubtitle(
                                title: 'Pomodoros',
                                subTitle: 'How many working sessions?'),
                            const HSpace(size: Insets.l),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(FontAwesomeIcons.minus),
                                ),
                                Text('4', style: TextStyles.h1),
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(FontAwesomeIcons.plus),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StyledSingleLineTextFormField extends StatelessWidget {
  const StyledSingleLineTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Title...',
          filled: true,
          fillColor: const Color(0xFFE1E5FF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class AddTaskBottomModalSheet extends HookWidget {
  const AddTaskBottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final showNoteField = useState(false).value;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          Insets.l,
          Insets.xl,
          Insets.l,
          MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'What are you working on?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff292553),
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            HSpace(size: Insets.l),
            HSpace(size: Insets.m),
            HSpace(size: Insets.l),
            Text(
              'Focus Sessions',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff292553),
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            HSpace(size: Insets.m),
            _CustomNumberPicker(),
            HSpace(size: Insets.m),
            _SaveTaskButton(),
            HSpace(size: Insets.l),
          ],
        ),
      ),
    );
  }
}

class _CustomNumberPicker extends StatelessWidget {
  const _CustomNumberPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFFC9CCFB)),
        ),
      ),
      selectedTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 21.0,
        color: Color(0xff292553),
      ),
      value: 4,
      minValue: 1,
      maxValue: 9,
      onChanged: (value) {
        print(value);
      },
    );
  }
}

class _SaveTaskButton extends StatelessWidget {
  const _SaveTaskButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xFF6B6CB1)),
      ),
      onPressed: () => Navigator.of(context).pop(),
      child: const Text('Save Task'),
    );
  }
}
