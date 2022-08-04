import 'package:flutter/material.dart';

import '../text_styles.dart';

class StyledTitleAndText extends StatelessWidget {
  const StyledTitleAndText({
    Key? key,
    required this.title,
    required this.text,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String title;
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        text: '$title\n',
        style: TextStyles.h1.copyWith(color: Colors.white),
        children: [
          TextSpan(
            text: text,
            style: TextStyles.body1.copyWith(height: 1.5),
          )
        ],
      ),
    );
  }
}
