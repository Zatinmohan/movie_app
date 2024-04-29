import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/utils/language_code.dart';

class Utilities {
  static late Utilities utilities;
  static final Utilities instance = Utilities._instance();

  Utilities._instance() {
    utilities = instance;
  }

  static void showSnackBar({
    required BuildContext context,
    required String message,
    int? seconds,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: seconds ?? 4),
      ),
    );
  }

  static String getDateTimeFormatted(DateTime date) {
    String dateType = "th";
    if (date.day % 10 == 1) {
      dateType = "st";
    } else if (date.day % 10 == 2) {
      dateType = "nd";
    } else if (date.day % 10 == 3) {
      dateType = "rd";
    } else {
      dateType = "th";
    }
    String convertedDateTime = DateFormat('dd MMMM yyyy').format(date);

    final List<String> currentDate = convertedDateTime.split(' ');
    currentDate[0] = currentDate[0] + "${dateType}";
    convertedDateTime = currentDate.join(" ");
    return convertedDateTime;
  }

  static String convertNumbersIntoInternationSystem({required int value}) {
    if (value >= 0 && value <= 999) {
      return "$value";
    } else if (value > 999 && value <= 99999) {
      return "${value ~/ 1000}K";
    } else if (value > 99999 && value <= 999999) {
      return "${value ~/ 1000}K";
    }
    return "${value ~/ 1000000}M ";
  }

  static String chagneDecimalPlace({
    required double value,
    required int moveDecimalTo,
  }) {
    return value.toStringAsFixed(moveDecimalTo);
  }

  static String getLanguageFromCode({required String langugageCode}) {
    return LanguageLocal().isoLangs[langugageCode] ?? "English";
  }

  static void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }
}
