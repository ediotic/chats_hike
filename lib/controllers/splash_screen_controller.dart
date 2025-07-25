import 'package:chats_hike/utils/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../utils/app_global.dart';

class SplashScreenController extends GetxController {
  final auth = FirebaseAuth.instance;
  RxDouble logoWidth = 0.0.obs;

  @override
  void onInit() {
    super.onInit();

    // initial logo size
    logoWidth.value = mq.width * 0.7;

    // shrink after delayed
    Future.delayed(Duration(seconds: 1), () {
      logoWidth.value = mq.width * 0.4;
    });

    // navigate 
   Future.delayed(const Duration(seconds: 4), () {
   if(auth.currentUser == null){
    Get.offAllNamed(AppRoutes.welcomeScreen);
   }else{
    Get.offAllNamed(AppRoutes.homeScreen);
   }
  Get.delete<SplashScreenController>();
});

  }
}
