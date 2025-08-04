

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../controllers/bottom_nav_controller.dart';
import '../controllers/chat_controller.dart';
import '../controllers/image_picker_controller.dart';
import '../controllers/profile_controller.dart';
import '../controllers/splash_screen_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => ChatController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => ImagePickerController());
   
  }
}