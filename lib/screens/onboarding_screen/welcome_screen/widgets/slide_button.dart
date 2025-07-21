import 'package:chats_hike/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_strings.dart';

class SlideButton extends StatelessWidget {
  const SlideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      child: SlideAction(
        onSubmit: () =>  Get.offAllNamed(AppRoutes.authScreen),
        innerColor: AppColors.blueSecondary,
        outerColor: AppColors.bluePrimary,
        sliderButtonIcon: Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
        sliderRotate: false,
        text: AppStrings.appName,

        textStyle: TextStyle(fontFamily: "Pacifico", fontSize: 20),
      ),
    );
  }
}
