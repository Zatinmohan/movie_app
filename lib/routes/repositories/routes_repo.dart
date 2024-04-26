import 'package:flutter/material.dart';

abstract class RouteRepo<T> {
  void initilizeRoutes();
  T get router;
  GlobalKey<NavigatorState> get navigationKey;
}
