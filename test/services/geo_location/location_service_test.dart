import 'dart:ffi';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/services/geo_location/errors/geo_exceptions.dart';
import 'package:movie_app/services/geo_location/location_service.dart';
import 'package:movie_app/services/geo_location/models/address_model.dart';
import 'package:movie_app/services/geo_location/repositories/location_service_repo.dart';
// ignore: depend_on_referenced_packages
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'location_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GeolocatorPlatform>()])
void main() {
  late MockGeolocatorPlatform mockService;
  late LocationServiceRepo<AddressModel> locationService;

  setUp(() {
    mockService = MockGeolocatorPlatform();
    locationService = GeoLocationService(service: mockService);
  });
  test('Location Fetching Success', () async {
    GeocodingPlatform.instance = MockGeocoding(showEmptyAddress: false);
    final Position mockPosition = Position(
      longitude: 100.0,
      latitude: 100.0,
      timestamp: DateTime.now(),
      accuracy: 0.0,
      altitude: 0.0,
      altitudeAccuracy: 0.0,
      heading: 0.0,
      headingAccuracy: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0,
    );

    const AddressModel mockAddress = AddressModel(
      name: "Test",
      postalCode: "Test",
      streetAddress: "Test",
      city: "Test",
      state: "Test",
    );
    when(mockService.isLocationServiceEnabled()).thenAnswer((_) {
      return Future.value(true);
    });
    when(mockService.checkPermission()).thenAnswer((_) {
      return Future.value(LocationPermission.always);
    });
    when(mockService.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.best,
        timeLimit: Duration(seconds: 6),
      ),
    )).thenAnswer((_) {
      return Future.value(mockPosition);
    });

    final AddressModel actualResult = await locationService.fetchAddress();

    expect(actualResult, equals(mockAddress));

    verifyInOrder([
      mockService.isLocationServiceEnabled(),
      mockService.checkPermission(),
      mockService.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.best,
          timeLimit: Duration(seconds: 6),
        ),
      ),
    ]);
  });

  test("Location Service Disabled", () {
    final LocationServiceExceptions exception =
        LocationServiceExceptions.fromCode(
            error: LocationErrors.ServiceDisabled);
    when(mockService.isLocationServiceEnabled()).thenThrow(exception.message);
    final actualResult = locationService.isServiceEnabled();

    expect(actualResult, throwsA(exception.message));
    verify(mockService.isLocationServiceEnabled()).called(1);
    verifyNever(mockService.checkPermission());
    verifyNever(
      mockService.getCurrentPosition(
          locationSettings: anyNamed('locationSettings')),
    );
  });

  test("Location Permission Denied", () async {
    final LocationServiceExceptions exception =
        LocationServiceExceptions.fromCode(
            error: LocationErrors.PermissionDenied);
    when(mockService.isLocationServiceEnabled()).thenAnswer(
      (_) => Future.value(true),
    );

    when(mockService.checkPermission()).thenThrow(exception.message);
    final actualResult1 = await locationService.isServiceEnabled();
    final actualResult2 = locationService.checkPermission();

    expect(actualResult1, isTrue);
    expect(actualResult2, throwsA(exception.message));

    verify(mockService.isLocationServiceEnabled()).called(1);
    verify(mockService.checkPermission()).called(1);

    verifyNever(
      mockService.getCurrentPosition(
          locationSettings: anyNamed('locationSettings')),
    );
  });

  test("Location Permission Denied Forever", () async {
    final LocationServiceExceptions exception =
        LocationServiceExceptions.fromCode(
            error: LocationErrors.PermissionDeniedForever);
    when(mockService.isLocationServiceEnabled()).thenAnswer(
      (_) => Future.value(true),
    );

    when(mockService.checkPermission()).thenThrow(exception.message);
    final actualResult1 = await locationService.isServiceEnabled();
    final actualResult2 = locationService.checkPermission();

    expect(actualResult1, isTrue);
    expect(actualResult2, throwsA(exception.message));

    verify(mockService.isLocationServiceEnabled()).called(1);
    verify(mockService.checkPermission()).called(1);

    verifyNever(
      mockService.getCurrentPosition(
          locationSettings: anyNamed('locationSettings')),
    );
  });

  test('Location Not Found', () async {
    final LocationServiceExceptions exception =
        LocationServiceExceptions.fromCode(
            error: LocationErrors.LocationNotFound);
    GeocodingPlatform.instance = MockGeocoding(showEmptyAddress: true);
    final Position mockPosition = Position(
      longitude: 100.0,
      latitude: 100.0,
      timestamp: DateTime.now(),
      accuracy: 0.0,
      altitude: 0.0,
      altitudeAccuracy: 0.0,
      heading: 0.0,
      headingAccuracy: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0,
    );

    when(mockService.isLocationServiceEnabled()).thenAnswer((_) {
      return Future.value(true);
    });
    when(mockService.checkPermission()).thenAnswer((_) {
      return Future.value(LocationPermission.always);
    });
    when(mockService.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.best,
        timeLimit: Duration(seconds: 6),
      ),
    )).thenAnswer((_) {
      return Future.value(mockPosition);
    });

    final actualResult = locationService.fetchAddress();

    expect(actualResult, throwsA(exception.message));
  });
}

class MockGeocoding extends Mock
    with MockPlatformInterfaceMixin
    implements GeocodingPlatform {
  final bool showEmptyAddress;

  MockGeocoding({required this.showEmptyAddress});

  @override
  Future<List<Location>> locationFromAddress(
    String address,
  ) async {
    return [
      Location(
        latitude: 100.0,
        longitude: 100.0,
        timestamp: DateTime.fromMillisecondsSinceEpoch(0).toUtc(),
      ),
    ];
  }

  @override
  Future<List<Placemark>> placemarkFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    return showEmptyAddress
        ? []
        : [
            const Placemark(
              name: "Test",
              postalCode: "Test",
              street: "Test",
              locality: "Test",
              administrativeArea: "Test",
            ),
          ];
  }
}
