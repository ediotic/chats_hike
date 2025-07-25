
import 'package:chats_hike/utils/app_global.dart';
import 'package:chats_hike/utils/app_icons.dart';
import 'package:chats_hike/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/splash_screen_controller.dart';
import '../../../utils/app_colors.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
   final SplashScreenController controller = Get.find<SplashScreenController>();

    return Scaffold(
      body: Center(
        child: Obx(() {
          return AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: controller.logoWidth.value,
            height: controller.logoWidth.value * 0.5,
            child: Image.asset(AppIcons.mainAppIcon),
          );
        }),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: mq.height * 0.015),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.appName,
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
