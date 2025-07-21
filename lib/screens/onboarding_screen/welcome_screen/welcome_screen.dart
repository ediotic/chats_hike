import 'package:flutter/material.dart';

import '../../../utils/app_global.dart';
import 'package:chats_hike/utils/app_icons.dart';
import 'package:chats_hike/utils/app_strings.dart';
import '../../../utils/app_colors.dart';
import 'widgets/slide_button.dart';
import 'widgets/splash_lottie.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),

          Text(
            AppStrings.welcomeTo,
            style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),

          Text(
            AppStrings.appName,
            style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
          // App Icon
          Image.asset(
            AppIcons.mainAppIcon,
            width: mq.width * 0.2,
            height: mq.height * 0.1,
          ),

          // lottie
          SplashLottie(),
          Spacer(),
          Text(
            AppStrings.madeInBharat,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: mq.height * 0.01),
          // slider Action Button
          SlideButton(),
          SizedBox(height: mq.height * 0.03),
        ],
      ),
    );
  }
}