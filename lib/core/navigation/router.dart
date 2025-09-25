import 'package:flutter/material.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';
import 'package:test_godigi_apps/screens/article/detail_article_screen.dart';
import 'package:test_godigi_apps/screens/forgot_password/create_new_password.dart';
import 'package:test_godigi_apps/screens/forgot_password/forgot_password_screen.dart';
import 'package:test_godigi_apps/screens/home/screen/home_screen.dart';
import 'package:test_godigi_apps/screens/login/article_login.dart';
import 'package:test_godigi_apps/screens/login/login_screen.dart';
import 'package:test_godigi_apps/screens/splash/splash_screen.dart';
import 'package:test_godigi_apps/screens/verification/otp_verification_screen.dart';
import 'package:test_godigi_apps/screens/verification/verification_screen.dart';

class Router {
  static Map<String, Widget Function(BuildContext context)> generateRoute() {
    return {
      Routes.mainRoute: (context) {
        const mainScreen = SplashScreen();
        return mainScreen;
      },
      Routes.articleLoginRoute: (context) => ArticleLogin(),
      Routes.detailArticleRoute: (context) => DetailArticleScreen(),
      Routes.loginRoute: (context) => LoginScreen(),
      Routes.verificationRoute: (context) => VerificationScreen(),
      Routes.otpVerificationRoute: (context) => OtpVerificationScreen(),
      Routes.homeRoute: (context) => HomeScreen(),
      Routes.forgotPasswordRoute: (context) => ForgotPasswordScreen(),
      Routes.createNewPasswordRoute: (context) => CreateNewPassword(),
    };
  }
}
