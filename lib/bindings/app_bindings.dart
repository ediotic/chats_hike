
import 'package:get/get.dart';

import '../controllers/bottom_nav_controller.dart';
import '../controllers/splash_screen_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => BottomNavController());
   
  }
}