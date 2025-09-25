import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';
import 'package:test_godigi_apps/screens/verification/otp_timer_component.dart';
import 'package:test_godigi_apps/shared/widgets/botton_widget.dart';
import 'package:test_godigi_apps/shared/widgets/verification_text_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary20,
        appBar: AppBar(
          backgroundColor: AppColors.primary20,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(height: 35),
                Text(
                  Strings.enterVerifyCode,
                  style: AppTextTheme.title1SemiBold,
                ),
                SizedBox(height: 10),
                VerificationTextWidget(
                  from: args['from'] == 'email' ? 'email' : 'whatsapp',
                  navigateTo: args['from'] == 'email'
                      ? 'nama_email@domain.com'
                      : '+62 8265614292',
                ),
                SizedBox(height: 70),
                OtpPinField(
                  onSubmit: (data) => null,
                  onChange: (data) => null,
                  maxLength: 4,
                  cursorColor: AppColors.neutral60,
                  otpPinFieldStyle: OtpPinFieldStyle(
                    textStyle: AppTextTheme.largeTitleSemiBold
                        .copyWith(color: AppColors.neutral50),
                    defaultFieldBorderColor: Colors.grey.shade300,
                    activeFieldBorderColor: AppColors.neutral100,
                    fieldPadding: 10,
                    filledFieldBorderColor: AppColors.otpColorUnderline,
                  ),
                  fieldWidth: 40,
                ),
                SizedBox(height: 44),
                BottonWidget(
                  color: AppColors.bluePrimary,
                  onTap: () {
                    args['pageFrom'] == 'login'
                        ? Navigator.pushNamed(
                            context,
                            Routes.homeRoute,
                          )
                        : Navigator.pushNamed(
                            context,
                            Routes.createNewPasswordRoute,
                          );
                  },
                  title: Strings.submitCode,
                ),
                OtpTimerComponent(
                  onTimerFinished: () {
                    // viewModel.setTimerFinished(finish: true);
                  },
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      Strings.resendCode,
                      style: AppTextTheme.caption1Reguler.copyWith(
                        color: AppColors.bluePrimary,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
