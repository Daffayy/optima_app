import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';
import 'package:test_godigi_apps/shared/widgets/airport_selection_sheet.dart';
import 'package:test_godigi_apps/shared/widgets/airport_selection_widget.dart';

import '../../../config/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bluePrimary,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, Bandoro Dimas',
                      style: AppTextTheme.title3SemiBold
                          .copyWith(color: AppColors.baseWhite),
                    ),
                    Icon(
                      Icons.notifications,
                      color: AppColors.baseWhite,
                    ),
                  ],
                ),
              ),
              AirportSelectionWidget(),
              Positioned(
                top: 150,
                child: Container(
                  height: MediaQuery.of(context).size.height - 180,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 40),
                  decoration: BoxDecoration(
                    color: AppColors.baseWhite,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(ImagesConstant.imgPromotionCard),
                        SizedBox(height: 24),
                        Text(
                          Strings.featured,
                          style: AppTextTheme.bodyBold,
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.primary20,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: AppColors.primary30,
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary30,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: SvgPicture.asset(
                                        ImagesConstant.icServiceFacility,
                                        color: AppColors.bluePrimary,
                                        height: 24,
                                        width: 24,
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      child: Text(
                                        Strings.facilityService,
                                        style: AppTextTheme.bodyMedium.copyWith(
                                          color: AppColors.neutral80,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.primary20,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: AppColors.primary30,
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary30,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: SvgPicture.asset(
                                        ImagesConstant.icAirportSelection,
                                        color: AppColors.bluePrimary,
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15),
                                      child: Text(
                                        Strings.irregularities,
                                        textAlign: TextAlign.center,
                                        style: AppTextTheme.bodyMedium.copyWith(
                                            color: AppColors.neutral80,
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.irregularities,
                              style: AppTextTheme.bodyBold,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                Strings.seeAll,
                                style: AppTextTheme.footnoteMedium
                                    .copyWith(color: AppColors.bluePrimary),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.detailArticleRoute);
                                },
                                child: Container(
                                  width: 150,
                                  // height: 100,
                                  margin: EdgeInsets.only(
                                      right: 15, left: index == 0 ? 10 : 0),
                                  decoration: BoxDecoration(
                                    color: AppColors.baseWhite,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 120,
                                        width: double.infinity,
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.primary20,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12),
                                                  topRight: Radius.circular(12),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                ImagesConstant.imgLineWave,
                                              ),
                                            ),
                                            Positioned(
                                              top: 8,
                                              right: 120,
                                              child: SvgPicture.asset(
                                                ImagesConstant.icOptima,
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
                                                  color: AppColors.bluePrimary,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Text(
                                                  Strings.news,
                                                  style: AppTextTheme
                                                      .footnoteMedium
                                                      .copyWith(
                                                    color: AppColors.baseWhite,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 50,
                                              child: Container(
                                                width: 150,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 12,
                                                ),
                                                child: Text(
                                                  'Faktor Cuaca dan Bencana Alam',
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppTextTheme
                                                      .textLogoSemiBold
                                                      .copyWith(
                                                    color: AppColors.neutral100,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '9 Dec, 2023',
                                                style: AppTextTheme
                                                    .footnoteSmall
                                                    .copyWith(
                                                  color: AppColors.neutral60,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Expanded(
                                                child: Text(
                                                  Strings.titleNewsDummy,
                                                  style: AppTextTheme
                                                      .caption2Reguler
                                                      .copyWith(
                                                    color: AppColors.neutral60,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.airportFacility,
                              style: AppTextTheme.bodyBold,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                Strings.seeAll,
                                style: AppTextTheme.footnoteMedium
                                    .copyWith(color: AppColors.bluePrimary),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 24),
                        SizedBox(
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.detailArticleRoute);
                                },
                                child: Container(
                                  width: 240,
                                  margin: EdgeInsets.only(
                                      right: 15, left: index == 0 ? 10 : 0),
                                  decoration: BoxDecoration(
                                    color: AppColors.baseWhite,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 120,
                                        width: double.infinity,
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
                                                ImagesConstant.imgDummyAirport,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 4),
                                              Text(
                                                Strings.followMeCar,
                                                style: AppTextTheme
                                                    .caption1Medium
                                                    .copyWith(
                                                  color: AppColors.neutral60,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                '9 Active',
                                                style: AppTextTheme
                                                    .caption2Semibold
                                                    .copyWith(
                                                  color: AppColors.secondary50,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(height: 8),
                                              SizedBox(
                                                width: 300,
                                                child: Wrap(
                                                  spacing: 8,
                                                  runSpacing: 8,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 4,
                                                        horizontal: 12,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            AppColors.neutral80,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                      child: Text(
                                                        'CGK',
                                                        style: AppTextTheme
                                                            .footnoteReguler
                                                            .copyWith(
                                                          color: AppColors
                                                              .baseWhite,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 4,
                                                        horizontal: 12,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            AppColors.neutral80,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                      child: Text(
                                                        'Terminal 1A',
                                                        style: AppTextTheme
                                                            .footnoteReguler
                                                            .copyWith(
                                                          color: AppColors
                                                              .baseWhite,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 4,
                                                        horizontal: 12,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            AppColors.neutral80,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                      child: Text(
                                                        'Departure Hall',
                                                        style: AppTextTheme
                                                            .footnoteReguler
                                                            .copyWith(
                                                          color: AppColors
                                                              .baseWhite,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 4,
                                                        horizontal: 12,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            AppColors.neutral80,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                      child: Text(
                                                        'Check In',
                                                        style: AppTextTheme
                                                            .footnoteReguler
                                                            .copyWith(
                                                          color: AppColors
                                                              .baseWhite,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.latestArticle,
                              style: AppTextTheme.bodyBold,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                Strings.seeAll,
                                style: AppTextTheme.footnoteMedium
                                    .copyWith(color: AppColors.bluePrimary),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 24),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.detailArticleRoute);
                                },
                                child: Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                      right: 15, left: index == 0 ? 10 : 0),
                                  decoration: BoxDecoration(
                                    color: AppColors.baseWhite,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fit: BoxFit.fill,
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
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Text(
                                                  Strings.news,
                                                  style: AppTextTheme
                                                      .footnoteMedium
                                                      .copyWith(
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '9 Dec, 2023',
                                                style: AppTextTheme
                                                    .footnoteSmall
                                                    .copyWith(
                                                  color: AppColors.neutral60,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Expanded(
                                                child: Text(
                                                  Strings.titleNewsDummy,
                                                  style: AppTextTheme
                                                      .caption2Reguler
                                                      .copyWith(
                                                    color: AppColors.neutral60,
                                                  ),
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}


