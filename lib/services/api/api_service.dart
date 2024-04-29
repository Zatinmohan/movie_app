import 'package:movie_app/services/api/repositories/api_repository.dart';
import 'package:movie_app/services/logger/logger_service.dart';

const String _logName = "Api Service";

class ApiService {
  final ApiRepository _apiService;

  ApiService({required ApiRepository apiService}) : _apiService = apiService {
    Logs().debugLog("$_logName Init");
  }

  Future<Map<String, dynamic>> getRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final Map<String, dynamic> response = await _apiService.getRequest(
        endPoint: endPoint,
        params: params,
        querryParams: queryParams,
        
      );
      return response;
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> postRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final Map<String, dynamic> response = await _apiService.postRequest(
        endPoint: endPoint,
        params: params,
        querryParams: queryParams,
      );
      return response;
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> putRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final Map<String, dynamic> response = await _apiService.putRequest(
        endPoint: endPoint,
        params: params,
        querryParams: queryParams,
      );
      return response;
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }
}
