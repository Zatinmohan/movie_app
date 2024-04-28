import 'package:flutter/material.dart';

class CustomWeMovieClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.4);
    path.quadraticBezierTo(
      0,
      size.height * 0.3,
      size.width * 0.05,
      size.height * 0.3,
    );
    path.lineTo(size.width * 0.4026600, size.height * 0.2971400);
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
    path.lineTo(size.width * 0.94, 0);
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
      size.height * 0.55,
      size.width * 0.94,
      size.height * 0.56,
    );
    path.quadraticBezierTo(
      size.width * 0.91,
      size.height * 0.56,
      size.width * 0.85,
      size.height * 0.56,
    );
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.55,
      size.width * 0.8,
      size.height * 0.7,
    );
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.9,
      size.width * 0.7,
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

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
