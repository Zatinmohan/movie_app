import 'package:movie_app/services/api/constants/api_constants.dart';
import 'package:movie_app/services/api/errors/api_exceptions.dart';
import 'package:movie_app/services/api/repositories/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/services/logger/logger_service.dart';

const String _logName = "Dio Client";

class DioClient implements ApiRepository {
  final Dio _dio;

  DioClient({required Dio dio}) : _dio = dio {
    _dio.options.baseUrl = ApiConstants.kBaseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 10);
    Logs().debugLog("$_logName Init");
  }
  @override
  Future<Map<String, dynamic>> getRequest(
      {required String endPoint,
      Map<String, dynamic>? params,
      Map<String, dynamic>? querryParams}) async {
    try {
      Logs().debugLog("Get -> $endPoint");
      final Response<dynamic> response = await _dio.get(endPoint,
          queryParameters: querryParams,
          options: Options(
            headers: {
              'Authorization':
                  'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YTg3ZTY4MDMyODIwMTIzZmQ0Yzg0YjQzNDhjYjc3ZCIsInN1YiI6IjY2Mjg5NDExOTFmMGVhMDE0YjAwOWU1ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.6zIM73Giwg5M4wP6MX8KDCpee7IMnpnLTZUyMpETb08',
            },
          ));
      if (response.statusCode != 200) {
        throw ApiExceptions.fromCode(errorCode: response.statusCode).message;
      } else {
        if (response.data == null) {
          return {};
        }
        return response.data;
      }
    } on DioException catch (error) {
      throw ApiExceptions.fromCode(errorCode: error.response?.statusCode)
          .message;
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
      Logs().debugLog("Post -> $endPoint");
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
    } on DioException catch (error) {
      throw ApiExceptions.fromCode(errorCode: error.response?.statusCode)
          .message;
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
      Logs().debugLog("Put -> $endPoint");
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
    } on DioException catch (error) {
      throw ApiExceptions.fromCode(errorCode: error.response?.statusCode)
          .message;
    } catch (error) {
      Logs().errorLog("$error", StackTrace.current);
      rethrow;
    }
  }
}
