import 'package:flutter/material.dart';

class CrackdLogo extends StatelessWidget {
  final double size;
  final Color? color;

  const CrackdLogo({
    Key? key,
    required this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/crackd_logo.png',
      height: size,
      color: color,
    );
  }
}
