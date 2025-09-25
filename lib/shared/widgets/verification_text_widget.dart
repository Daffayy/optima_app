import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/strings.dart';

class VerificationTextWidget extends StatelessWidget {
  final String from;
  final String navigateTo;

  const VerificationTextWidget({
    super.key,
    required this.from,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
              style: AppTextTheme.caption1Reguler.copyWith(
                color: AppColors.neutral60,
                fontSize: 16,
              ),
              text: 'We have sent a verification code (OTP) to your '),
          TextSpan(
            text: from,
            style: AppTextTheme.caption1Reguler.copyWith(
              color: AppColors.neutral60,
              fontSize: 16,
            ),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: navigateTo,
            style: AppTextTheme.caption1Reguler.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.neutral60,
            ),
          ),
        ],
      ),
    );
  }
}
