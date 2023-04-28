import 'package:get/get.dart';


import 'package:flutter/material.dart';
import '../../App Configurations/color_constants.dart';
import '../../theme/app_style.dart';
import '../../utils/HelperFiles/math_utils.dart';
import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  var splashController = Get.find<SplashScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryWhite,
      body: Center(
        child: Image.asset(
          "assets/img_movie.png",
        ),
      ),
    );
  }
}
