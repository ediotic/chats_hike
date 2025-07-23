import 'package:chats_hike/screens/home_screen/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

class HomeScreen extends StatelessWidget  {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
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
            onPressed:(){} , 
            icon: Icon(Icons.search),
            iconSize: 30,
            color: AppColors.white,
            ),
          IconButton(
            onPressed:(){} , 
            icon: Icon(Icons.more_vert),
            iconSize: 30,
            color: AppColors.white,
            ),
        ],
      ),
      bottomNavigationBar: BottomNavbar()
    );
  }
}
