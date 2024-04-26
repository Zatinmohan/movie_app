import 'package:movie_app/routes/repositories/routes_repo.dart';
import 'package:movie_app/services/logger/logger_service.dart';

const String _logName = "Route Service";

class RouteService<T> {
  final RouteRepo<T> _routerService;

  RouteService({required RouteRepo<T> routeService})
      : _routerService = routeService {
    Logs().debugLog("$_logName Init");
    _routerService.initilizeRoutes();
  }

  T get route => _routerService.router;

  RouteRepo<T> get routerService => _routerService;
}
