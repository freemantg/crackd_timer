import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles.dart';

import '../../tasks_page.dart';
import '../text_styles.dart';
import 'styled_card.dart';

class CustomTaskListTile extends StatelessWidget {
  const CustomTaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.sm,
        horizontal: Insets.l,
      ),
      child: StyledCard(
        paddingInsets: Insets.m,
        color: const Color(0xFFF3F6FB),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomIcon(),
                const VSpace(size: Insets.m),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clean house',
                      style: TextStyles.h2,
                    ),
                    const HSpace(size: Insets.sm),
                    Text(
                      'Description',
                      style: TextStyles.body2,
                    ),
                  ],
                ),
                const Spacer(),
                const FaIcon(
                  FontAwesomeIcons.penToSquare,
                  color: Color(0xFFC3C6D1),
                  size: 18.0,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Start',
                  style: TextStyles.title1.copyWith(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
