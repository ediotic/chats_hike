import 'package:chats_hike/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bottom_nav_controller.dart';
import '../../widgets/app_chat_list.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

class HomeScreen extends StatelessWidget  {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final bottomNavController =  Get.put(BottomNavController());
    return Scaffold(
      body: TabBarView(
        controller: bottomNavController.tabController,
        children:[
             // chat list
             AppChatList(), 
             Center(
              child: Text("Groups"),
             ),
             Center(
              child: Text("calls"),
             ),
        ],
         ),

    

      // bottom nav bar --->
      bottomNavigationBar: BottomNavbar()
    );
  }
}
