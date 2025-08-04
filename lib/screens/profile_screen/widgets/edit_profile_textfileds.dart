import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';


class EditProfileTextfield extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final bool isEnabled;

  const EditProfileTextfield({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: isEnabled,
      textInputAction: TextInputAction.next,
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        fillColor: AppColors.grey1212,
        filled: isEnabled,
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.grey9E9E,
        ),
        prefixIcon: Icon(
          icon,
          color: AppColors.blueSecondary,
          size: 25,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
