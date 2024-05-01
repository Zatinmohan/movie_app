import 'package:logger/web.dart';

class Logs {
  static final Logger _logger = Logger();
  static final Logs _instance = Logs._internal();

  Logs._internal();

  factory Logs() => _instance;

  static void debugLog(String? message, [StackTrace? stackTrace]) {
    _logger.d(
      message,
      stackTrace: stackTrace,
    );
  }

  static void errorLog(String? message, [StackTrace? stackTrace, dynamic error]) {
    _logger.e(
      message,
      stackTrace: stackTrace,
      error: error,
    );
  }
}
