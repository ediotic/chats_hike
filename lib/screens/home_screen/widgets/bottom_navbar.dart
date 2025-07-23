import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/bottom_nav_controller.dart';
import '../../../utils/app_colors.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller  = Get.put(BottomNavController());
    return Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide.none),
        ),
        child: Obx(
          () =>  TabBar(
        controller: controller.tabController  ,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: AppColors.grey9f0,
        labelColor: AppColors.bluePrimary,
    tabs:[
      Tab(
        icon: controller.selectedIndex.value == 0 ? Icon(Icons.chat) : Icon(Icons.chat_bubble_outline),
        text: "Chats",
      ),
      Tab(
        icon: controller.selectedIndex.value == 1 ? Icon(Icons.camera_alt) : Icon(Icons.camera_alt_outlined) ,
        text: "Groups",
      ),
      Tab(
        icon: controller.selectedIndex.value == 2 ? Icon(Icons.call) : Icon(Icons.call_outlined),
        text: "Calls",
      ),
    ],

      ),
        ),
    );
  }
}