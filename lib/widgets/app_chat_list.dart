import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_routes.dart';
import '../utils/app_strings.dart';
import 'chat_tiles.dart';

class AppChatList extends StatelessWidget {
  const AppChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appName,
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
            color: AppColors.white,
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.receiverScreen);
            },
            icon: Icon(Icons.more_vert),
            iconSize: 30,
            color: AppColors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          ChatTiles(),
          ChatTiles(),
          ChatTiles(),
          ChatTiles(),
          ChatTiles(),
          ChatTiles(),
        ],
      ),
      // floadting action button --->
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 25, bottom: 30),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.bluePrimary,
          child: Icon(Icons.add, color: AppColors.grey9f0, size: 30),
        ),
      ),
    );
  }
}
