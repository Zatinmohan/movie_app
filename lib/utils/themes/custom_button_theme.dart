import 'package:flutter/material.dart';
import 'package:movie_app/utils/themes/color_constants.dart';

class CustomButtonTheme {
  final BuildContext _context;
  late ButtonThemeData _themeData;

  CustomButtonTheme(BuildContext context) : _context = context {
    setThemeData();
  }

  void setThemeData() {
    _themeData = ButtonThemeData(
      minWidth: MediaQuery.sizeOf(_context).width * 0.4,
      height: MediaQuery.sizeOf(_context).width * 0.3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      disabledColor: ColorConstants.kDisabledButtonColor,
      hoverColor: ColorConstants.kPrimaryAccentColor,
      focusColor: ColorConstants.kPrimaryAccentColor,
      buttonColor: ColorConstants.kPrimaryAccentColor,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ColorConstants.kPrimaryAccentColor,
        onPrimary: ColorConstants.kPrimaryTextColor,
        secondary: ColorConstants.kSecondaryAccentColor,
        onSecondary: ColorConstants.kPrimaryTextColor,
        error: ColorConstants.kErrorButtonColor,
        onError: ColorConstants.kSecondaryTextColor,
        background: ColorConstants.kPrimaryAccentColor,
        onBackground: ColorConstants.kPrimaryAccentColor,
        surface: ColorConstants.kPrimaryAccentColor,
        onSurface: ColorConstants.kPrimaryAccentColor,
      ),
    );
  }

  ButtonThemeData get buttomThemeData => _themeData;
}
