import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/config/strings.dart';

class DetailArticleScreen extends StatefulWidget {
  const DetailArticleScreen({super.key});

  @override
  State<DetailArticleScreen> createState() => _DetailArticleScreenState();
}

class _DetailArticleScreenState extends State<DetailArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseWhite,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.baseWhite,
        title: Text(
         Strings.article,
          style: AppTextTheme.bodyBold.copyWith(
            color: AppColors.neutral100,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 29,
                    ),
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: const BoxDecoration(
                      color: AppColors.baseWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 31,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.shareYourPatners,
                                style: AppTextTheme.bodyBold,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Divider(
                          height: 2,
                          color: Colors.grey.shade100,
                        ),
                        SizedBox(height: 12),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            width: 500,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(ImagesConstant.icFacebook),
                                SvgPicture.asset(ImagesConstant.icTwitter),
                                SvgPicture.asset(ImagesConstant.icInstagram),
                                SvgPicture.asset(ImagesConstant.icTelegram),
                                SvgPicture.asset(ImagesConstant.icWhatsapp),
                                SvgPicture.asset(ImagesConstant.icWhatsapp),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                            color: AppColors.neutral20,
                            border: Border.all(color: AppColors.silver20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                ImagesConstant.icLink,
                              ),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  'https://optima.angkasapura2.co.id/article',
                                  style: AppTextTheme.bodyMedium.copyWith(
                                    color: AppColors.neutral50,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                        text:
                                            'https://optima.angkasapura2.co.id/article'),
                                  );
                                },
                                child:
                                    SvgPicture.asset(ImagesConstant.icCopyLink),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.share_outlined,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade200,
                ),
              )),
              child: Column(
                children: [
                  Image.asset(
                    ImagesConstant.imgArticleDummy,
                    width: double.infinity,
                  ),
                  SizedBox(height: 20),
                  Text(
                    Strings.titleNewsDummy,
                    style: AppTextTheme.title3SemiBold,
                  ),
                  SizedBox(height: 10),
                  Text(Strings.textNewsDummy),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
