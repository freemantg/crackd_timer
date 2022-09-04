import 'package:flutter/material.dart';

import '../../../shared/text_styles.dart';

class StyledHeadingAndSubHeading extends StatelessWidget {
  const StyledHeadingAndSubHeading({
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
        style: TextStyles.h1HighOpacity,
        children: [
          TextSpan(
            text: text,
            style: TextStyles.title1.copyWith(
              fontWeight: FontWeight.normal,
              height: 2.0,
            ),
          )
        ],
      ),
    );
  }
}
