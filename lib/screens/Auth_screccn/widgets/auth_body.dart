import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import 'login_form.dart';
import 'signup_form.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = false.obs;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.grey9f0,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // for login --->>
                InkWell(
                  onTap: () => isLogin.value = true,
                  child: Column(
                    children: [
                      Text(
                        AppStrings.login,
                        style: TextStyle(
                          color: AppColors.grey1212,
                          fontSize: isLogin.value ? 20 : 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      AnimatedContainer(
                        height: 3,
                        width: isLogin.value ? 70 : 0,
                        duration: Duration(milliseconds: 150),
                        decoration: BoxDecoration(
                          color: AppColors.bluePrimary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(color: AppColors.grey1212, height: 20, width: 1),

                // for sign Up --->>
                InkWell(
                  onTap: () => isLogin.value = false,
                  child: Column(
                    children: [
                      Text(
                        AppStrings.signUp,
                        style: TextStyle(
                          color: AppColors.grey1212,
                          fontSize: isLogin.value ? 15 : 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      AnimatedContainer(
                        height: 3,
                        width: isLogin.value ? 0 : 85,
                        duration: Duration(milliseconds: 150),
                        decoration: BoxDecoration(
                          color: AppColors.bluePrimary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Obx(() => isLogin.value ?const LoginForm() :  const SignUpForm()),
           const SizedBox(height: 10),
        ],
      ),
    );
  }
}
