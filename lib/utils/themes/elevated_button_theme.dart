import 'package:flutter/material.dart';

class CustomElevatedButtonTheme {
  final BuildContext _context;
  late ElevatedButtonThemeData _themeData;

  CustomElevatedButtonTheme(BuildContext context) : _context = context {
    setThemeData();
  }

  void setThemeData() {
    double buttonSize = MediaQuery.sizeOf(_context).width;
    _themeData = ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        elevation: const MaterialStatePropertyAll(2.0),
        iconSize:
            MaterialStatePropertyAll(MediaQuery.sizeOf(_context).width * 0.05),
        minimumSize: MaterialStateProperty.all(
          Size(
            buttonSize * 0.45,
            buttonSize * 0.15,
          ),
        ),
        maximumSize: MaterialStateProperty.all(
          Size(
            buttonSize * 0.75,
            buttonSize * 0.18,
          ),
        ),
      ),
    );
  }

  ElevatedButtonThemeData get elevatedThemeData => _themeData;
}
