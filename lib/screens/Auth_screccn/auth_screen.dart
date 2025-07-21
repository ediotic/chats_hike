import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_global.dart';
import '../../utils/app_icons.dart';
import '../../utils/app_strings.dart';
import 'widgets/auth_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(

              children: [
                Image.asset(AppIcons.mainAppIcon, width: mq.width * 0.3),
                SizedBox(height: 10),
                Text(
                  AppStrings.appName,
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                AuthBody(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
