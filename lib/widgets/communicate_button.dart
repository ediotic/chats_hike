import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class CommunicateButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String btnName;

  const CommunicateButton({
    super.key,
    required this.icon,
    required this.onTap,
     required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        // margin: EdgeInsets.all(),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.grey5656,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.grey9f0,
            width: 0.3,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey1212.withOpacity(0.2),
              offset: Offset(0, 1),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 38,
              color: AppColors.bluePrimary,
            ),
            SizedBox(height: 5,),
            Text(btnName, style: TextStyle(color: AppColors.grey9E9E, fontSize: 13),),
          ],
        ),
      ),
    );
  }
}
