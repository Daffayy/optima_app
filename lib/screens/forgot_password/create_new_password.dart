import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';
import 'package:test_godigi_apps/shared/widgets/botton_widget.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary20,
      appBar: AppBar(
        backgroundColor: AppColors.primary20,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.createNewPassword,
              style: AppTextTheme.title1SemiBold,
            ),
            SizedBox(height: 18),
            Text(
              Strings.enterNewPasswordText,
              style: AppTextTheme.caption1Reguler,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 18),
            Text(
              Strings.password,
              style: AppTextTheme.bodyBold.copyWith(color: AppColors.neutral60),
            ),
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
                  hintText: Strings.hintText(Strings.enterNewPassword),
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
            SizedBox(height: 16),
            Text(
              Strings.confirmPassword,
              style: AppTextTheme.bodyBold.copyWith(color: AppColors.neutral60),
            ),
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
                controller: confirmPasswordController,
                textInputAction: TextInputAction.done,
                obscureText: isObscureConfirmPassword,
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
                  hintText: Strings.reEnterNewPassword,
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
                        isObscureConfirmPassword = !isObscureConfirmPassword;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: (isObscureConfirmPassword)
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
            BottonWidget(
              color: confirmPasswordController.text.isEmpty &&
                      passwordController.text.isEmpty
                  ? AppColors.neutral30
                  : AppColors.bluePrimary,
              onTap: () {
                confirmPasswordController.text.isEmpty &&
                        passwordController.text.isEmpty
                    ? null
                    : Navigator.pushNamed(
                        context,
                        Routes.homeRoute,
                      );
              },
              title: Strings.submit,
            ),
          ],
        ),
      ),
    );
  }
}
