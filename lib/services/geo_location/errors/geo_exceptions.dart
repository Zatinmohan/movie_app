// ignore_for_file: constant_identifier_names

import 'package:movie_app/error/base_error.dart';

enum LocationErrors {
  ServiceDisabled,
  PermissionDenied,
  PermissionDeniedForever,
  LocationNotFound,
}

class LocationServiceExceptions extends BaseException {
  const LocationServiceExceptions([super.message]);

  factory LocationServiceExceptions.fromCode({LocationErrors? error}) {
    switch (error) {
      case LocationErrors.ServiceDisabled:
        return const LocationServiceExceptions(
          "Your location is disabled. Please enable it and try again.",
        );

      case LocationErrors.PermissionDenied:
        return const LocationServiceExceptions(
          "You have denied the location permission. Please enable the permission and try again",
        );
      case LocationErrors.PermissionDeniedForever:
        return const LocationServiceExceptions(
          "You have denied the location service forever. Please enable it by going to settings and try again.",
        );

      case LocationErrors.LocationNotFound:
        return const LocationServiceExceptions(
          "We can't find the location that you are currently at. Please try again later.",
        );
      default:
        return const LocationServiceExceptions();
    }
  }
}
