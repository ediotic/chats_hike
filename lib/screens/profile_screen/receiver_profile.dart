import 'package:chats_hike/utils/app_colors.dart';
import 'package:chats_hike/widgets/button.dart';
import 'package:chats_hike/widgets/communicate_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
import '../../utils/app_strings.dart';

class ReceiverProfileScreen extends StatelessWidget {
  const ReceiverProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _auth = Get.find<AuthController>();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // margin: EdgeInsets.all(),
              padding: EdgeInsets.only(top: 10 , bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.grey5656),
              child: Column(
                children: [
                  // profile image receiver
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(radius: 80, child: Icon(Icons.person)),
                  ),
                  SizedBox(height: 8),
                   Text(
                   "Vishal Sharma",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                      fontSize: 20,
                    ),
                  ),
                   Text(
                   "idiotic@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey9E9E,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Online",
                    style: TextStyle(color: AppColors.grey9E9E, fontSize: 14),
                  ),
                  // Text(
                  //   "last seen and time",
                  //   style: TextStyle(color: AppColors.grey9E9E, fontSize: 14),
                  // ),
                  SizedBox(height:8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // video call button
                      CommunicateButton(icon: CupertinoIcons.video_camera_solid, onTap: (){}, btnName: AppStrings.video,),

                      // call call button
                      CommunicateButton(icon: CupertinoIcons.phone, onTap: (){}, btnName: AppStrings.audio,),

                      // chat call button
                      CommunicateButton(icon: CupertinoIcons.chat_bubble_2_fill , onTap: (){}, btnName: AppStrings.chat,),
                    ],
                  ),
                ],
              ),
            ),
            AppButton(title: "loout", onTap: (){_auth.logout();}),
          ],
        ),
      ),
    );
  }
}
