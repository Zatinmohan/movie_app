import 'package:movie_app/error/base_error.dart';

class ApiExceptions extends BaseException {
  final int? statusCode;
  const ApiExceptions([
    super.message,
    this.statusCode,
  ]);

  factory ApiExceptions.fromCode({int? errorCode}) {
    switch (errorCode) {
      case 400:
        return const ApiExceptions("Bad Request. Please try again later");

      case 401:
        return const ApiExceptions(
          "User Not Verified. Please login and try again",
        );

      case 500:
        return const ApiExceptions("Error code 500");

      default:
        return const ApiExceptions();
    }
  }
}
