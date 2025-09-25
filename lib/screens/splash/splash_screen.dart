import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      await Navigator.pushReplacementNamed(
        context,
        Routes.articleLoginRoute,
      );
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImagesConstant.imgLogoOptima),
              Text(
                Strings.operationAndCollboration,
                textAlign: TextAlign.center,
                style: AppTextTheme.regularSize12.copyWith(
                  color: AppColors.bluePrimary,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Image.asset(ImagesConstant.imgLogoInjourney),
      ),
    );
  }
}
