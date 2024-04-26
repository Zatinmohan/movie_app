import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/dependency_injections/global_dependency_injection.dart';
import 'package:movie_app/routes/route_sevice.dart';

void main() {
  GlobalDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GetIt sl = GetIt.instance;

    return MaterialApp.router(
      title: 'Movie App',
      routerConfig: sl.get<RouteService>().route,
    );
  }
}
