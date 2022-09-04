import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';

class PomodoroCard extends HookWidget {
  final Color color;
  final String title;
  final String? description;

  const PomodoroCard({
    Key? key,
    required this.title,
    required this.description,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isComplete = useState(false);
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Corners.s10),
      ),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(Insets.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🍏'),
            const HSpace(size: Insets.m),
            Text(
              title,
              style: TextStyles.title1.copyWith(
                color: Colors.black.withOpacity(TextOpacity.highEmphasis),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const HSpace(size: Insets.m),
            Text(
              description ?? '',
              style: TextStyles.body1.copyWith(
                color: Colors.black.withOpacity(
                  TextOpacity.mediumEmphasis,
                ),
              ),
            ),
            const HSpace(size: Insets.m),
            Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Checkbox(
                    value: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Corners.s5),
                    ),
                    fillColor: MaterialStatePropertyAll(
                      theme.backgroundColor
                          .withOpacity(TextOpacity.lowEmphasis),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    text: '3',
                    style: TextStyles.body1.copyWith(
                      color:
                          Colors.black.withOpacity(TextOpacity.mediumEmphasis),
                    ),
                    children: [
                      TextSpan(
                        text: ' / 4',
                        style: TextStyles.body1.copyWith(
                          color: Colors.black.withOpacity(TextOpacity.disabled),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
