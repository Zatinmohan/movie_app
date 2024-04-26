import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/services/geo_location/location_service.dart';

class LocationServiceDependencyInjection {
  final GetIt sl = GetIt.instance;

  LocationServiceDependencyInjection() {
    if (!sl.isRegistered<GeoLocationService>()) {
      sl.registerLazySingleton<GeoLocationService>(
        () => GeoLocationService(service: GeolocatorPlatform.instance),
      );
    }
  }
}
