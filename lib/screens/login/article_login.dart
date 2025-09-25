import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:test_godigi_apps/shared/widgets/botton_widget.dart';

import '../../core/navigation/routes.dart';

class ArticleLogin extends StatefulWidget {
  const ArticleLogin({super.key});

  @override
  State<ArticleLogin> createState() => _ArticleLoginState();
}

class _ArticleLoginState extends State<ArticleLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.baseWhite,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                color: AppColors.bluePrimary,
              ),
            ),
            Positioned(
              right: 100,
              left: 100,
              top: 30,
              child: Image.asset(
                width: 111,
                height: 40,
                ImagesConstant.imgLogoOptima,
                color: AppColors.baseWhite,
                alignment: Alignment.center,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 90),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                decoration: BoxDecoration(
                  color: AppColors.baseWhite,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.latestNewsAndEvent,
                      style: AppTextTheme.bodyBold.copyWith(
                        color: AppColors.neural90,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.detailArticleRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.baseWhite,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.neutral60,
                                  offset: Offset(0, 0.5),
                                  blurRadius: 0.5,
                                  blurStyle: BlurStyle.outer)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  width: double.infinity,
                                  ImagesConstant.imgArticleDummy,
                                  fit: BoxFit.fitWidth,
                                ),
                                Positioned(
                                  left: 280,
                                  top: 10,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 24,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white30,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Text(
                                      'News',
                                      style:
                                          AppTextTheme.footnoteMedium.copyWith(
                                        color: AppColors.baseWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 12,
                                left: 12,
                                top: 10,
                                bottom: 7,
                              ),
                              child: Text(
                                '9 Dec, 2023',
                                style: AppTextTheme.footnoteSmall.copyWith(
                                  color: AppColors.neutral60,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 12,
                                left: 12,
                                bottom: 7,
                              ),
                              child: Text(
                                'Pertahankan Predikat Badan Publik “Informatif”, InJourney: Kolaborasi Jadi Kunci',
                                style: AppTextTheme.caption2Reguler.copyWith(
                                  color: AppColors.neutral60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: 8,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.detailArticleRoute);
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 20, right: 10),
                              decoration: BoxDecoration(
                                color: AppColors.baseWhite,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.neutral60,
                                    offset: Offset(0, 0.5),
                                    blurRadius: 0.5,
                                    blurStyle: BlurStyle.outer,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                          child: Image.asset(
                                            width: double.infinity,
                                            height: 120,
                                            ImagesConstant.imgArticleDummy,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          top: 8,
                                          right: 8,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 4,
                                              horizontal: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white30,
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Text(
                                              'News',
                                              style: AppTextTheme.footnoteMedium.copyWith(
                                                color: AppColors.baseWhite,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '9 Dec, 2023',
                                            style: AppTextTheme.footnoteSmall.copyWith(
                                              color: AppColors.neutral60,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Expanded(
                                            child: Text(
                                              Strings.titleNewsDummy,
                                              style: AppTextTheme.caption2Reguler.copyWith(
                                                color: AppColors.neutral60,
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          child: BottonWidget(
            onTap: () {
              Navigator.pushNamed(context, Routes.loginRoute);
            },
            title: Strings.login,
          ),
        ),
      ),
    );
  }
}
