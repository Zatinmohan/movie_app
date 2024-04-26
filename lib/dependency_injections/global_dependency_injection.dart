import 'package:get_it/get_it.dart';
import 'package:movie_app/routes/route_dependency_injection.dart';

class GlobalDependencyInjection {
  final GetIt sl = GetIt.instance;

  GlobalDependencyInjection() {
    RouteServiceDependencyInjection();
  }
}
