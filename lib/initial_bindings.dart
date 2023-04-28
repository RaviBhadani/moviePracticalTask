import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ravitaskk/utils/HelperFiles/pref_utils.dart';

class InitialBindings extends Bindings {

  @override
  Future<void> dependencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    PrefUtils.init();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    Get.put(PrefUtils());

  }
}
