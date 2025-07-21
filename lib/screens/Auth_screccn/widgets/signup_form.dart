import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../../widgets/button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool _obsecureText = false.obs;
    return Column(
      children: [
        SizedBox(height: 70),

        // name field
        TextField(
          style: TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            fillColor: AppColors.bluePrimary,
            filled: true,
            hintText: AppStrings.emterName,
            hintStyle: TextStyle(
              color: AppColors.blueSecondary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: Icon(
              Icons.person_3_rounded,
              color: AppColors.blueSecondary,
              size: 25,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
          ),
        ),

        SizedBox(height: 20),
        // email field
        TextField(
          style: TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            fillColor: AppColors.bluePrimary,
            filled: true,
            hintText: AppStrings.pleaseEmail,
            hintStyle: TextStyle(
              color: AppColors.blueSecondary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: Icon(
              Icons.email_rounded,
              color: AppColors.blueSecondary,
              size: 25,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
          ),
        ),

        SizedBox(height: 20),

        // password field
        Obx(
          () => TextField(
            style: TextStyle(color: AppColors.white),
            obscureText: _obsecureText.value,
            decoration: InputDecoration(
              fillColor: AppColors.bluePrimary,
              filled: true,
              hintText: AppStrings.pleasePassword,
              hintStyle: TextStyle(
                color: AppColors.blueSecondary,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: Icon(
                Icons.password_rounded,
                color: AppColors.blueSecondary,
                size: 25,
              ),
              suffixIcon: InkWell(
                onTap: () => _obsecureText.value = !_obsecureText.value,
                child: Icon(
                  _obsecureText.value ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.blueSecondary,
                  size: 25,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),

        // login Button
        AppButton(
          title: AppStrings.signUp,
          onTap: () {},
          icon: Icons.lock_open_outlined,
          iconColor: AppColors.bluePrimary,
          elevation: 8,
        ),
      ],
    );
  }
}
