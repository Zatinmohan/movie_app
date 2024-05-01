import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:movie_app/services/geo_location/errors/geo_exceptions.dart';
import 'package:movie_app/services/geo_location/models/address_model.dart';
import 'package:movie_app/services/geo_location/repositories/location_service_repo.dart';
import 'package:movie_app/services/logger/logger_service.dart';

const String _logName = "Geo Location Service";

class GeoLocationService implements LocationServiceRepo<AddressModel> {
  final GeolocatorPlatform _geoLocation;

  GeoLocationService({required GeolocatorPlatform service})
      : _geoLocation = service {
    Logs.debugLog("$_logName Init", StackTrace.current);
  }

  @override
  Future<AddressModel> fetchAddress() async {
    try {
      await isServiceEnabled();
      await checkPermission();
      final AddressModel result = await _getLocationAddress();
      return result;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<bool> isServiceEnabled() async {
    try {
      final bool serviceEnabled = await _geoLocation.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw LocationServiceExceptions.fromCode(
          error: LocationErrors.ServiceDisabled,
        ).message;
      }
      return serviceEnabled;
    } on LocationServiceExceptions catch (_) {
      throw LocationServiceExceptions.fromCode(
              error: LocationErrors.ServiceDisabled)
          .message;
    } catch (error) {
      Logs.errorLog("$_logName $error", StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<bool> checkPermission() async {
    try {
      LocationPermission permission = await _geoLocation.checkPermission();

      switch (permission) {
        case LocationPermission.denied:
          permission = await _geoLocation.requestPermission();
          if (permission == LocationPermission.denied) {
            throw LocationServiceExceptions.fromCode(
              error: LocationErrors.PermissionDenied,
            ).message;
          }
          return true;

        case LocationPermission.deniedForever:
          throw LocationServiceExceptions.fromCode(
            error: LocationErrors.PermissionDeniedForever,
          ).message;

        default:
          return true;
      }
    } on LocationServiceExceptions catch (error) {
      Logs.errorLog("$_logName $error", StackTrace.current);
      throw error.message;
    } catch (error) {
      Logs.errorLog("$_logName $error", StackTrace.current);
      throw error.toString();
    }
  }

  Future<AddressModel> _getLocationAddress() async {
    try {
      final Position currentPosition = await _geoLocation.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.best,
          timeLimit: Duration(seconds: 6),
        ),
      );
      final AddressModel result = await _getCurrentAddressFromCoordinates(
        latitude: currentPosition.latitude,
        longitude: currentPosition.longitude,
      );

      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<AddressModel> _getCurrentAddressFromCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);

      if (placemarks.isEmpty) {
        throw LocationServiceExceptions.fromCode(
          error: LocationErrors.LocationNotFound,
        ).message;
      } else {
        final placemark = placemarks.first;
        final AddressModel result = AddressModel(
          name: placemark.name,
          city: placemark.locality,
          state: placemark.administrativeArea,
          postalCode: placemark.postalCode,
          streetAddress: placemark.street,
        );
        return result;
      }
    } catch (error) {
      Logs.errorLog("$_logName $error", StackTrace.current);
      rethrow;
    }
  }
}
