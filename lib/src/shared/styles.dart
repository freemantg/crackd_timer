import 'package:flutter/material.dart';

class Insets {
  static double gutterScale = 1;
  static const double scale = 1;

  /// Dynamic insets, may get scaled with the device size
  static double mGutter = m * gutterScale;
  static double lGutter = l * gutterScale;
  static double topGutter = 16;
  static const double xs = 2 * scale;
  static const double sm = 6 * scale;
  static const double m = 16 * scale;
  static const double l = 24 * scale;
  static const double xl = 36 * scale;
}

class Elevation {
  static const navDrawer = 16.0;
  static const appBar = 4.0;
  static const card = 8.0;
  static const fab = 6.0;
  static const button = 8.0;
  static const dialog = 24.0;
}

class TextOpacity {
  static double highEmphasis = 0.87;
  static double mediumEmphasis = 0.60;
  static double lowEmphasis = 0.40;
  static double disabled = 0.38;
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

class Corners {
  static const double btn = 22;
  static const double dialog = 12;

  /// Xs
  static const double s3 = 3;
  static BorderRadius get s3Border => BorderRadius.all(s3Radius);
  static Radius get s3Radius => const Radius.circular(s3);

  /// Small
  static const double s5 = 5;
  static BorderRadius get s5Border => BorderRadius.all(s5Radius);
  static Radius get s5Radius => const Radius.circular(s5);

  /// Medium
  static const double s8 = 8;
  static const BorderRadius s8Border = BorderRadius.all(s8Radius);
  static const Radius s8Radius = Radius.circular(s8);

  /// Large
  static const double s10 = 10;
  static BorderRadius get s10Border => BorderRadius.all(s10Radius);
  static Radius get s10Radius => const Radius.circular(s10);
}
