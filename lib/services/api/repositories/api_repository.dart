abstract class ApiRepository {
  Future<Map<String, dynamic>> getRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? querryParams,
  });

  Future<Map<String, dynamic>> postRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? querryParams,
  });

  Future<Map<String, dynamic>> putRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? querryParams,
  });
}
