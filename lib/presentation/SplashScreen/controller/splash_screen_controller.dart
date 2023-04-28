import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/ConstantsFiles/string_constants.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    changeRoute();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future changeRoute() async {
    Future.delayed(Duration(milliseconds: 4000), () {
      Get.offAllNamed(AppRoutes.homeScreen);
    });
  }
}
