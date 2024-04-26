import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomCircularProgressIndicator extends CustomPainter {
  final double percentage;
  final Color innerColor;
  final Color outerColor;
  final double innerArcWidth;

  final double outerCircleWidth;
  const CustomCircularProgressIndicator({
    required this.percentage,
    required this.innerColor,
    required this.outerColor,
    required this.innerArcWidth,
    required this.outerCircleWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint arcPainter = Paint()
      ..color = innerColor
      ..strokeWidth = innerArcWidth
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.stroke;

    Paint circlePainter = Paint()
      ..color = innerColor
      ..strokeWidth = outerCircleWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;


    // for painting circle
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      math.pi,
      2 * math.pi,
      false,
      circlePainter,
    );


    // for painting arc 
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      percentage,
      math.pi / 4,
      false,
      arcPainter,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
