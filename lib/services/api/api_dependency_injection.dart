import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/services/api/api_service.dart';
import 'package:movie_app/services/api/clients/dio_client.dart';

class ApiServiceDependencyInjection {
  final GetIt sl = GetIt.instance;
  ApiServiceDependencyInjection() {
    if (!sl.isRegistered<ApiService>()) {
      sl.registerLazySingleton<ApiService>(
        () => ApiService(
          apiService: DioClient(dio: Dio()),
        ),
      );
    }
  }
}
