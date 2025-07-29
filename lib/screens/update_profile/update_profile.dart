// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_global.dart';
import '../../utils/app_strings.dart';
import '../../widgets/button.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.grey5656,
        centerTitle: false,
        title: Text(
          AppStrings.updateProfile,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              // height: mq.height * 0.60,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: AppColors.grey5656),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.grey1212,
                          ),
                          child: Icon(CupertinoIcons.photo, size: 25),
                        ),
                        const Text(
                          AppStrings.personalInfo,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey9E9E,
                          ),
                        ),
                        SizedBox(height: 10,),

                        // name field
                        TextField(
                          // controller: emailController,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: AppColors.white),
                          decoration: InputDecoration(
                            fillColor:AppColors.grey1212 ,
                            filled: true,
                            hintText: "Your Name",
                            hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey9E9E,
                          ),
                            prefixIcon: Icon(
                              CupertinoIcons.person,
                              color: AppColors.blueSecondary,
                              size: 25,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          // controller: emailController,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: AppColors.white),
                          decoration: InputDecoration(
                            fillColor:AppColors.grey1212 ,
                            filled: true,
                            hintText: "about",
                            hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey9E9E,
                          ),
                            prefixIcon: Icon(
                              CupertinoIcons.info,
                              color: AppColors.blueSecondary,
                              size: 25,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),

                        // email field ---->
                        TextField(
                          // controller: emailController,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: AppColors.white),
                          decoration: InputDecoration(
                            fillColor: AppColors.grey1212,
                            filled: true,
                            hintText: "exmaple@gmail.com",
                            hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey9E9E,
                          ),
                            prefixIcon: Icon(
                             CupertinoIcons.mail,
                              color: AppColors.blueSecondary,
                              size: 25,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),

                        // phone number ----->>
                        TextField(
                          // controller: emailController,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: AppColors.white),
                          decoration: InputDecoration(
                            fillColor: AppColors.grey1212,
                            filled: true,
                            hintText: "12345678",
                            hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey9E9E,
                          ),
                            prefixIcon: Icon(
                              CupertinoIcons.phone,
                              color: AppColors.blueSecondary,
                              size: 25,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        AppButton(
                          title:AppStrings.save,
                           onTap: (){},
                           icon: Icons.save,
                           backgroundColor: AppColors.bluePrimary,
                           textColor: AppColors.grey1212,
                           iconColor: AppColors.grey1212,
                           ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
