import 'package:flutter/material.dart';

class StyledGridPaper extends StatelessWidget {
  final Color color;
  final double interval;
  final int divisions;
  final int subdivisions;
  final Widget? child;

  const StyledGridPaper({
    Key? key,
    this.color = const Color(0x7FC3E8F3),
    this.interval = 100.0,
    this.divisions = 2,
    this.subdivisions = 5,
    this.child,
  })  : assert(divisions > 0,
            'The "divisions" property must be greater than zero. If there were no divisions, the grid paper would not paint anything.'),
        assert(subdivisions > 0,
            'The "subdivisions" property must be greater than zero. If there were no subdivisions, the grid paper would not paint anything.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GridPaperPainter(
        color: color,
        interval: interval,
        divisions: divisions,
        subdivisions: subdivisions,
      ),
      child: child,
    );
  }
}

class _GridPaperPainter extends CustomPainter {
  const _GridPaperPainter({
    required this.color,
    required this.interval,
    required this.divisions,
    required this.subdivisions,
  });

  final Color color;
  final double interval;
  final int divisions;
  final int subdivisions;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()..color = color;
    final double allDivisions = (divisions * subdivisions).toDouble();
    for (double x = 0.0; x <= size.width; x += interval / allDivisions) {
      linePaint.strokeWidth = (x % interval == 0.0)
          ? 1.0
          : (x % (interval / subdivisions) == 0.0)
              ? 0.5
              : 0.25;
      canvas.drawLine(Offset(x, 0.0), Offset(x, size.height), linePaint);
    }
    for (double y = 0.0; y <= size.height; y += interval / allDivisions) {
      linePaint.strokeWidth = (y % interval == 0.0)
          ? 1.0
          : (y % (interval / subdivisions) == 0.0)
              ? 0.5
              : 0.25;
      canvas.drawLine(Offset(0.0, y), Offset(size.width, y), linePaint);
    }
  }

  @override
  bool shouldRepaint(_GridPaperPainter oldPainter) {
    return oldPainter.color != color ||
        oldPainter.interval != interval ||
        oldPainter.divisions != divisions ||
        oldPainter.subdivisions != subdivisions;
  }

  @override
  bool hitTest(Offset position) => false;
}
