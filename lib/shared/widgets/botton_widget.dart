import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';

import '../../config/app_text_theme.dart';

class BottonWidget extends StatelessWidget {
  VoidCallback? onTap;
  String? title;
  EdgeInsetsGeometry? padding;
  Color? color;
  double? width;

  BottonWidget({
    super.key,
    this.title,
    this.onTap,
    this.padding,
    this.color,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        margin: EdgeInsets.symmetric(
          // horizontal: 20,
          vertical: 16,
        ),
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
        decoration: BoxDecoration(
          color: color ?? AppColors.bluePrimary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          title ?? '',
          textAlign: TextAlign.center,
          style: AppTextTheme.bodyBold.copyWith(
            color: AppColors.baseWhite,
          ),
        ),
      ),
    );
  }
}
