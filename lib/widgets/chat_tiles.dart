import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_routes.dart';

class ChatTiles extends StatelessWidget {
  const ChatTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Get.toNamed(AppRoutes.chatScreen);

          },
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: AppColors.bluePrimary,
            child: Icon(Icons.person, color: AppColors.grey9f0),
          ),
          title: Text(
            "Vishal Sharma",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.white,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            "Last message here...",
            style: TextStyle(color: AppColors.grey9E9E),
          ),
          trailing: Text("Time"),
        ),
        Divider(
          color: AppColors.grey9f0,
          thickness: 0.1,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}
