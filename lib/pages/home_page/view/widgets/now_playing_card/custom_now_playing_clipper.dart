import 'package:flutter/material.dart';

class CustomNowPlayingClipper extends CustomClipper<Path> {
  final double startPoint;
  const CustomNowPlayingClipper({
    this.startPoint = 0.15,
  });
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height * startPoint);

    path.quadraticBezierTo(
      0,
      size.height * (startPoint - 0.05),
      size.width * 0.05,
      size.height * (startPoint - 0.05),
    );
    path.quadraticBezierTo(
      size.width * 0.15,
      size.height * (startPoint - 0.05),
      size.width * 0.25,
      size.height * (startPoint - 0.05),
    );
    path.cubicTo(
      size.width * 0.3,
      size.height * (startPoint - 0.05),
      size.width * 0.35,
      size.height * (startPoint - 0.05),
      size.width * 0.35,
      size.height * 0.05,
    );
    path.quadraticBezierTo(
      size.width * 0.35,
      0,
      size.width * 0.4,
      0,
    );
    path.lineTo(size.width * 0.9, 0);
    path.quadraticBezierTo(
      size.width,
      0,
      size.width,
      size.height * 0.05,
    );
    path.quadraticBezierTo(
      size.width,
      size.height * 0.1,
      size.width,
      size.height * 0.75,
    );
    path.quadraticBezierTo(
      size.width,
      size.height * 0.8,
      size.width * 0.95,
      size.height * 0.8,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.8,
      size.width * 0.9,
      size.height * 0.8,
    );
    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.8,
      size.width * 0.85,
      size.height * 0.85,
    );
    path.cubicTo(
      size.width * 0.85,
      size.height * 0.9,
      size.width * 0.85,
      size.height * 0.9,
      size.width * 0.85,
      size.height * 0.95,
    );
    path.quadraticBezierTo(
      size.width * 0.85,
      size.height,
      size.width * 0.8,
      size.height,
    );
    path.quadraticBezierTo(
      size.width * 0.15,
      size.height,
      size.width * 0.05,
      size.height,
    );
    path.quadraticBezierTo(
      0,
      size.height,
      0,
      size.height * 0.9,
    );
    path.quadraticBezierTo(
      0,
      size.height * 0.2,
      0,
      size.height * 0.15,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
