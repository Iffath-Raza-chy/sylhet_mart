import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vector_math/vector_math.dart';

class CustPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 1.8);
    canvas.drawCircle(const Offset(60, 75), 30, Paint());
    canvas.drawCircle(const Offset(140, 75), 30, Paint());
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius / 2),
        0.5,
        2,
        false,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);
  }

  @override
  bool shouldRepaint(CustPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustPainter oldDelegate) => false;
}
