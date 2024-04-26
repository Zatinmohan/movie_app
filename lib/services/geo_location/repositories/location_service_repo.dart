abstract class LocationServiceRepo<T> {
  Future<T> fetchAddress();
  Future<bool> checkPermission();
  Future<bool> isServiceEnabled();
}
