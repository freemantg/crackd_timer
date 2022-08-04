import 'package:flutter/material.dart';

import '../shared/styles.dart';
import 'shared/styled_components/styled_card.dart';

import 'shared/styled_components/styled_filter_switcher.dart';
import 'shared/styled_components/styled_title_text.dart';
import 'shared/text_styles.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A6DB0),
      body: SafeArea(
        child: Column(
          children: [
            const HSpace(size: Insets.xl),
            const StyledFilterSwitcher(),
            const HSpace(size: Insets.xl),
            GestureDetector(
              onTap: () {},
              child:
                  const CircleAvatar(radius: 40, backgroundColor: Colors.white),
            ),
            const HSpace(size: Insets.xl),
            const StyledTitleAndText(
              title: 'Active Overview',
              text: 'Activity summary',
              textAlign: TextAlign.center,
            ),
            const HSpace(size: Insets.xl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.l),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: StyledCard(
                          child: Column(
                            children: [
                              Text('Hours focused', style: TextStyles.title1),
                              const HSpace(size: Insets.m),
                              Text('7h 30m', style: TextStyles.h1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const HSpace(size: Insets.m),
                  Row(
                    children: [
                      Expanded(
                        child: StyledCard(
                          child: Column(
                            children: [
                              Text(
                                'Pomodoros',
                                style: TextStyles.title1,
                              ),
                              const HSpace(size: Insets.m),
                              Text('5', style: TextStyles.h1),
                            ],
                          ),
                        ),
                      ),
                      const VSpace(size: Insets.m),
                      Expanded(
                        child: StyledCard(
                          child: Column(
                            children: [
                              Text(
                                'Total',
                                style: TextStyles.title1,
                              ),
                              const HSpace(size: Insets.m),
                              Text('5h 3m', style: TextStyles.h1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
