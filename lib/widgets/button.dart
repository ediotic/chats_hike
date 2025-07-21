import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData? icon;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final double fontSize;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.backgroundColor = AppColors.blueSecondary,
    this.textColor = AppColors.bluePrimary,
    this.iconColor = AppColors.bluePrimary,
    this.fontSize = 18,
    this.borderRadius = 100,
    this.elevation = 5,
    this.padding = const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
    this.margin = const EdgeInsets.symmetric(horizontal: 30),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: backgroundColor.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: elevation,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 10),
              Icon(
                icon,
                color: iconColor,
                size: 20,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
