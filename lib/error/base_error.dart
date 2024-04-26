class BaseException implements Exception {
  final String message;

  const BaseException([
    this.message =
        "Whoops! Something went wrong. Try again.",
  ]);
}
