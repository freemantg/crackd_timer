import 'package:flutter/material.dart';

class Insets {
  static double gutterScale = 1;
  static const double scale = 1;

  /// Dynamic insets, may get scaled with the device size
  static double mGutter = m * gutterScale;
  static double lGutter = l * gutterScale;
  static const double xs = 2 * scale;
  static const double sm = 6 * scale;
  static const double m = 12 * scale;
  static const double l = 24 * scale;
  static const double xl = 36 * scale;
}

class Space extends StatelessWidget {
  final double width;
  final double height;

  const Space({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height: height);
}

class VSpace extends StatelessWidget {
  final double size;
  const VSpace({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Space(width: size, height: 0);
  }
}

class HSpace extends StatelessWidget {
  final double size;
  const HSpace({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Space(width: 0, height: size);
  }
}
