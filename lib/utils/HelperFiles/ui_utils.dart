import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../../App Configurations/color_constants.dart';
import '../../App Configurations/image_constants.dart';
import '../../theme/app_style.dart';
import 'math_utils.dart';

class UIUtils {
  static bool isProgressVisible = false;


  static void showProgressDialog({isCancellable = false}) async {
   Get.dialog(
        Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        ColorConstant.primaryBlue),
                    strokeWidth: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
        barrierDismissible: isCancellable,
      );
      isProgressVisible = true;
  }

  ///common method for hiding progress dialog
  static void hideProgressDialog() {
    // if (Get.isSnackbarOpen) {

    // }
    if (Get.isDialogOpen==true) {
      Get.closeAllSnackbars();
      Get.back();

    }
    isProgressVisible = false;
  }

  static void showSnakBar({headerText, bodyText}) {
    Get.snackbar(
      headerText,
      bodyText,
      snackPosition: SnackPosition.BOTTOM,
      isDismissible: true,
      onTap: null,
    );
  }
}
