import 'package:movie_app/services/api/errors/api_exceptions.dart';
import 'package:movie_app/services/api/repositories/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/services/logger/logger_service.dart';

const String _logName = "Dio Client";

class DioClient implements ApiRepository {
  final Dio _dio;

  DioClient({required Dio dio}) : _dio = dio {
    Logs().debugLog("$_logName Init");
  }
  @override
  Future<Map<String, dynamic>> getRequest(
      {required String endPoint,
      Map<String, dynamic>? params,
      Map<String, dynamic>? querryParams}) async {
    try {
      final Response<dynamic> response = await _dio.get(
        endPoint,
        queryParameters: querryParams,
      );
      if (response.statusCode != 200) {
        throw ApiExceptions.fromCode(errorCode: response.statusCode).message;
      } else {
        if (response.data == null) {
          return {};
        }
        return response.data;
      }
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> postRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? querryParams,
  }) async {
    try {
      final Response<dynamic> response = await _dio.post(
        endPoint,
        queryParameters: querryParams,
      );
      if (response.statusCode != 200) {
        throw ApiExceptions.fromCode(errorCode: response.statusCode).message;
      } else {
        if (response.data == null) {
          return {};
        }
        return response.data;
      }
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> putRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? querryParams,
  }) async {
    try {
      final Response<dynamic> response = await _dio.put(
        endPoint,
        queryParameters: querryParams,
      );
      if (response.statusCode != 200) {
        throw ApiExceptions.fromCode(errorCode: response.statusCode).message;
      } else {
        if (response.data == null) {
          return {};
        }
        return response.data;
      }
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }
}
