import 'package:chats_hike/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../../widgets/button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final authController = Get.put(AuthController());
    RxBool _obsecureText = false.obs;
    return Column(
      children: [
        SizedBox(height: 70),

        // email field
        TextField(
          controller: emailController,
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
            controller: passwordController,
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
       Obx(() =>     authController.isLoading.value
            ? CircularProgressIndicator(color: AppColors.blueSecondary,)
            : AppButton(
                title: AppStrings.login,
                onTap: () {
                  authController.login(
                    emailController.text,
                    passwordController.text,
                  );
                  // Get.offAllNamed(AppRoutes.homeScreen);
                },
                icon: Icons.arrow_forward_ios,
                iconColor: AppColors.bluePrimary,
                elevation: 8,
              ),
              ),
      ],
    );
  }
}
