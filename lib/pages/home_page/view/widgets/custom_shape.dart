import 'package:flutter/material.dart';

class CustomWeMovieContainer extends CustomPainter {
  final Color firstColor;
  final Color secondColor;

  const CustomWeMovieContainer({
    required this.firstColor,
    required this.secondColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.bottomLeft,
        colors: [
          firstColor,
          secondColor,
        ],
        stops: const [0, 0],
      ).createShader(Offset.zero & size);

    Path path = Path();

    path.moveTo(0, size.height * 0.38);
    path.quadraticBezierTo(
      0,
      size.height * 0.3,
      size.width * 0.05,
      size.height * 0.3,
    );
    path.lineTo(size.width * 0.4, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.3,
      size.width * 0.5,
      size.height * 0.2,
    );
    path.quadraticBezierTo(
      size.width * 0.5,
      0,
      size.width * 0.6,
      0,
    );
    path.lineTo(size.width * 0.95, 0);
    path.quadraticBezierTo(
      size.width,
      0,
      size.width,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width,
      size.height * 0.1,
      size.width,
      size.height * 0.5,
    );
    path.quadraticBezierTo(
      size.width,
      size.height * 0.6,
      size.width * 0.95,
      size.height * 0.6,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.6,
      size.width * 0.75,
      size.height * 0.6,
    );
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.6,
      size.width * 0.7,
      size.height * 0.7,
    );
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.9,
      size.width * 0.6,
      size.height * 0.9,
    );
    path.lineTo(size.width * 0.05, size.height * 0.9);
    path.quadraticBezierTo(
      0,
      size.height * 0.9,
      0,
      size.height * 0.8,
    );
    path.cubicTo(
      0,
      size.height * 0.8,
      0,
      size.height * 0.4,
      0,
      size.height * 0.38,
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
