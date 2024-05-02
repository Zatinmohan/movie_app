import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/pages/splash_page/view/widgets/custom_loader.dart';
import 'package:movie_app/routes/constants/routes_name.dart';
import 'package:movie_app/services/geo_location/errors/geo_exceptions.dart';
import 'package:movie_app/services/geo_location/location_service.dart';
import 'package:movie_app/utils/themes/color_constants.dart';

import 'package:movie_app/utils/utilities.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;
  final GetIt sl = GetIt.instance;
  @override
  void initState() {
    _initAnimationControllers();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _initLocationService();
      Future.delayed(const Duration(seconds: 2), () {
        context.pushReplacementNamed(RoutesName.Main);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _initLocationService() async {
    try {
      await sl.get<GeoLocationService>().isServiceEnabled();
      await sl.get<GeoLocationService>().checkPermission();
    } catch (error) {
      if (error ==
          LocationServiceExceptions.fromCode(
            error: LocationErrors.ServiceDisabled,
          ).message) {
        if (context.mounted) {
          Utilities.showSnackBar(
            context: context,
            message: "$error",
          );
        }
      }
      rethrow;
    }
  }

  void _initAnimationControllers() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
    _animation = Tween<double>(
      begin: 0,
      end: 1.0,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryBackgroundColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Assets.images.logoFull.image(
              width: size * 0.45,
              height: size * 0.45,
              alignment: Alignment.center,
            ),
            SizedBox(
              width: size * 0.5,
              height: size * 0.5,
              child: CustomPaint(
                painter: CustomCircularProgressIndicator(
                  percentage: _animation.value,
                  outerColor: Colors.black,
                  innerColor: Colors.black,
                  innerArcWidth: size * 0.015,
                  outerCircleWidth: size * 0.002,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
