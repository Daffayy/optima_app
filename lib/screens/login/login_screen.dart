import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/shared/widgets/botton_widget.dart';

import '../../core/navigation/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final focusNode = FocusNode();
  bool isObscurePassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary20,
        appBar: AppBar(
          backgroundColor: AppColors.primary20,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14),
              Center(
                child: Image.asset(
                  ImagesConstant.imgLogoOptima,
                  height: 48,
                ),
              ),
              Center(
                child: Text(
                  Strings.byInjourneyText,
                  style: AppTextTheme.textLogo.copyWith(
                    color: AppColors.bluePrimary,
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  Strings.loginYourAccount,
                  style: AppTextTheme.titleSemiBold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  Strings.emailOrUsername,
                  style: AppTextTheme.bodyBold
                      .copyWith(color: AppColors.neutral60),
                ),
              ),
              Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
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
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  Strings.password,
                  style: AppTextTheme.bodyBold
                      .copyWith(color: AppColors.neutral60),
                ),
              ),
              Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.silver20,
                  ),
                  color: AppColors.neutral20,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  // focusNode: focusNode,
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  obscureText: isObscurePassword,
                  obscuringCharacter: '●',
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
                    hintText: Strings.hintText(Strings.password),
                    hintStyle: AppTextTheme.bodyMedium.copyWith(
                      color: AppColors.neutral50,
                    ),
                    suffixIconConstraints: BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                      maxWidth: 40,
                      maxHeight: 40,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isObscurePassword = !isObscurePassword;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: (isObscurePassword)
                            ? SvgPicture.asset(
                                ImagesConstant.icAppearPassword,
                              )
                            : SvgPicture.asset(
                                ImagesConstant.icHidePassword,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 22),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.forgotPasswordRoute);
                  },
                  child: Text(
                    Strings.forgotPassword,
                    style: AppTextTheme.caption1Reguler.copyWith(
                      color: AppColors.bluePrimary,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: BottonWidget(
                  color: emailController.text.isEmpty &&
                          passwordController.text.isEmpty
                      ? AppColors.neutral30
                      : AppColors.bluePrimary,
                  onTap: () {
                    emailController.text.isEmpty &&
                            passwordController.text.isEmpty
                        ? null
                        : Navigator.pushNamed(context, Routes.verificationRoute, arguments: {
                          'pageFrom' : 'login',
                    });
                  },
                  title: Strings.loginText,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 22),
                      child: DottedLine(
                        dashColor: AppColors.silver20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      Strings.or,
                      style: AppTextTheme.footnoteMedium.copyWith(
                        color: AppColors.neutral60,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 22),
                      child: DottedLine(
                        dashColor: AppColors.silver20,
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary20,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: AppColors.bluePrimary),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        ImagesConstant.icGoogle,
                      ),
                      Center(
                        widthFactor: 1.5,
                        child: Text(
                          Strings.continueWithGoogle,
                          textAlign: TextAlign.center,
                          style: AppTextTheme.bodyBold.copyWith(
                            color: AppColors.bluePrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.dontHaveAnAccount,
                style: AppTextTheme.caption1Reguler,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    Strings.registerNow,
                    style: AppTextTheme.caption1Reguler.copyWith(
                      color: AppColors.bluePrimary,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
