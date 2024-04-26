import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/routes/clients/go_router_client.dart';
import 'package:movie_app/routes/repositories/routes_repo.dart';
import 'package:movie_app/routes/route_sevice.dart';

class RouteServiceDependencyInjection {
  final GetIt sl = GetIt.instance;

  RouteServiceDependencyInjection() {
    if (!sl.isRegistered<RouteService>()) {
      final RouteRepo service = GoRouterClient(
        navigationKey: GlobalKey<NavigatorState>(),
      );
      sl.registerLazySingleton<RouteService>(
        () => RouteService(routeService: service),
      );
    }
  }
}
