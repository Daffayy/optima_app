import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';
import 'package:test_godigi_apps/shared/widgets/botton_widget.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String? selectedOption;

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
              margin: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    Strings.verification,
                    style: AppTextTheme.titleSemiBold,
                  ),
                  SizedBox(height: 18),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      Strings.chooseText,
                      style: AppTextTheme.textLogo,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 65),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOption = 'email';
                            });
                          },
                          child: Container(
                            width: 135,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              color: AppColors.neutral20,
                              border: Border.all(
                                color: selectedOption == 'email'
                                    ? AppColors
                                        .bluePrimary // Border biru saat aktif
                                    : AppColors.grey20, // Border default
                                width: selectedOption == 'email' ? 2.0 : 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary20,
                                  ),
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: AppColors.bluePrimary,
                                    size: 45,
                                  ),
                                ),
                                SizedBox(height: 22),
                                Text(
                                  Strings.sendToEmail,
                                  maxLines: 2,
                                  style: AppTextTheme.footnoteReguler,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOption = 'whatsapp';
                            });
                          },
                          child: Container(
                            width: 135,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              color: AppColors.neutral20,
                              border: Border.all(
                                color: selectedOption == 'whatsapp'
                                    ? AppColors.bluePrimary
                                    : AppColors.grey20,
                                width: selectedOption == 'whatsapp' ? 2.0 : 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.shade50,
                                  ),
                                  child: SvgPicture.asset(
                                    ImagesConstant.icWhatsapp,
                                    height: 45,
                                  ),
                                ),
                                SizedBox(height: 22),
                                Text(
                                  Strings.sendToWhatsapp,
                                  style: AppTextTheme.footnoteReguler,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 65),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22),
                    child: BottonWidget(
                      color: selectedOption == null
                          ? AppColors.neutral30
                          : AppColors.bluePrimary,
                      onTap: () {
                        selectedOption == null
                            ? null
                            : Navigator.pushNamed(
                                context, Routes.otpVerificationRoute,arguments: {
                                  'from' : selectedOption,
                                  'pageFrom' : args['pageFrom']
                        });
                      },
                      title: Strings.submit,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
