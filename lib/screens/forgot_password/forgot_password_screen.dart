import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';
import 'package:test_godigi_apps/shared/widgets/botton_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary20,
        appBar: AppBar(
          backgroundColor: AppColors.primary20,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.forgotPassword,
                style: AppTextTheme.title1SemiBold,
              ),
              SizedBox(height: 18),
              Text(
                Strings.enterTheEmailText,
                style: AppTextTheme.caption1Reguler,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 18),
              Text(
                Strings.emailOrUsername,
                style:
                    AppTextTheme.bodyBold.copyWith(color: AppColors.neutral60),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.silver20,
                  ),
                  color: AppColors.neutral20,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  // focusNode: focusNode,
                  controller: emailController,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                  },
                  cursorColor: AppColors.neutral60,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: Strings.hintText(Strings.emailOrUsername),
                    hintStyle: AppTextTheme.bodyMedium.copyWith(
                      color: AppColors.neutral50,
                    ),
                  ),
                ),
              ),
              BottonWidget(
                color: emailController.text.isEmpty
                    ? AppColors.neutral30
                    : AppColors.bluePrimary,
                onTap: () {
                  emailController.text.isEmpty
                      ? null
                      : Navigator.pushNamed(context, Routes.verificationRoute,
                          arguments: {
                              'pageFrom': 'forgotPassword',
                            });
                },
                title: Strings.submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
