import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/pages/splash_page/view/splash_page.dart';
import 'package:movie_app/routes/constants/routes_name.dart';
import 'package:movie_app/routes/repositories/routes_repo.dart';
import 'package:movie_app/services/logger/logger_service.dart';

const String _logName = "Go Router Service";

class GoRouterClient implements RouteRepo<GoRouter> {
  late final GoRouter _router;
  late final GlobalKey<NavigatorState> _navigatorKey;

  GoRouterClient({
    required GlobalKey<NavigatorState> navigationKey,
  }) : _navigatorKey = navigationKey {
    Logs().debugLog("$_logName Init");
  }
  @override
  void initilizeRoutes() {
    _router = GoRouter(
      initialLocation: RoutesName.ROOT,
      navigatorKey: _navigatorKey,
      routes: <GoRoute>[
        GoRoute(
          path: RoutesName.ROOT,
          name: RoutesName.ROOT,
          builder: (context, state) {
            return const SplashPage();
          },
        ),
      ],
    );
  }

  @override
  GlobalKey<NavigatorState> get navigationKey => _navigatorKey;

  @override
  GoRouter get router => _router;
}
