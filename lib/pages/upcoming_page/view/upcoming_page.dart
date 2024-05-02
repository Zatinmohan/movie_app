import 'package:flutter/material.dart';
import 'package:movie_app/utils/themes/color_constants.dart';

class UpComingPage extends StatelessWidget {
  const UpComingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorConstants.kPrimaryBackgroundColor,
              ColorConstants.kSecondaryBackgroundColor,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.06, 0.5],
          ),
        ),
        child: Column(
          children: [
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
