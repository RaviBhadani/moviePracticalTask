import 'package:get/get.dart';

import '../presentation/HomeScreen/binding/home_screen_binding.dart';
import '../presentation/HomeScreen/home_screen.dart';
import '../presentation/SplashScreen/binding/splash_screen_binding.dart';
import '../presentation/SplashScreen/splash_screen.dart';


class AppRoutes {
  /// Splash Screen
  static String splashScreen = '/splash_screen';

  /// Home Page
  static String homeScreen = '/home_screen';


  static List<GetPage> pages = [
    /// SplashScreen
    GetPage(
      name: splashScreen,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
      page: () => SplashScreen(),
      bindings: [
        SplashScreenBinding(),
      ],
    ),

    /// Home Page
    GetPage(
      name: homeScreen,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
      page: () => HomeScreen(),
      bindings: [
        HomeScreenBinding(),
      ],
    ),

  ];
}
