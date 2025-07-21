import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/app_global.dart';
import '../../../../utils/app_lottie.dart';

class SplashLottie extends StatelessWidget {
  const SplashLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
            child: Lottie.asset(
              AppLottie.mainAppLottie,
              width: mq.width * 0.8,
              height: mq.height * 0.5,
            ),
          );
  }
}