import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/pages/splash_page/view/widgets/custom_loader.dart';
import 'package:movie_app/utils/themes/color_constants.dart';

import 'dart:math' as math;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;
  @override
  void initState() {
    _initAnimationControllers();
    super.initState();
  }

  void _initAnimationControllers() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
    _animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
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
                  innerArcWidth: size * 0.02,
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
