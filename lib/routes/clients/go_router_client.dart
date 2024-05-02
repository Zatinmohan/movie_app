import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/pages/bottom_navigation_page/views/main_page.dart';
import 'package:movie_app/pages/home_page/view/home_page.dart';
import 'package:movie_app/pages/search_page/pages/local_search_page.dart';
// import 'package:movie_app/pages/search_page/pages/search_page.dart';
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
    Logs.debugLog("$_logName Init");
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
          routes: <GoRoute>[
            GoRoute(
              path: RoutesName.Main,
              name: RoutesName.Main,
              builder: ((context, state) {
                return MainPage();
              }),
              routes: [
                GoRoute(
                  path: RoutesName.HOME,
                  name: RoutesName.HOME,
                  builder: (context, state) => const HomePage(),
                  routes: [
                    GoRoute(
                      path: RoutesName.SEARCH,
                      name: RoutesName.SEARCH,
                      builder: (context, state) {
                        return const LocalSearchPage();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  GlobalKey<NavigatorState> get navigationKey => _navigatorKey;

  @override
  GoRouter get router => _router;
}
