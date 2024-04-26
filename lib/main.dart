import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/dependency_injections/global_dependency_injection.dart';
import 'package:movie_app/routes/route_sevice.dart';
import 'package:movie_app/utils/themes/color_constants.dart';
import 'package:movie_app/utils/themes/custom_bottom_navbar_theme.dart';
import 'package:movie_app/utils/themes/custom_button_theme.dart';
import 'package:movie_app/utils/themes/custom_snackbar_theme.dart';
import 'package:movie_app/utils/themes/custom_text_theme.dart';
import 'package:movie_app/utils/themes/elevated_button_theme.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: ColorConstants.kPrimaryBackgroundColor,
        textTheme: CustomTextTheme(context).textTheme,
        buttonTheme: CustomButtonTheme(context).buttomThemeData,
        elevatedButtonTheme:
            CustomElevatedButtonTheme(context).elevatedThemeData,
        snackBarTheme:
            CustomSnackBarThemeData(context: context).snackBarThemeData,
        bottomNavigationBarTheme:
            CustomBottomNavBarTheme(context: context).themeData,
      ),
      routerConfig: sl.get<RouteService>().route,
    );
  }
}
