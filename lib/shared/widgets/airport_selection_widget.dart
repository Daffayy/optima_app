import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/image_constant.dart';
import 'package:test_godigi_apps/shared/widgets/airport_selection_sheet.dart';

class AirportSelectionWidget extends StatefulWidget {
  const AirportSelectionWidget({super.key});

  @override
  State<AirportSelectionWidget> createState() => _AirportSelectionWidgetState();
}

class _AirportSelectionWidgetState extends State<AirportSelectionWidget> {
  List<String> selectedAirports = [];

  void _openSelectionSheet() async {
    final result = await showModalBottomSheet<List<String>>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => const AirportSelectionSheet(),
    );

    if (result != null) {
      setState(() {
        selectedAirports = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    final displayAirports = selectedAirports.length <= 3
        ? selectedAirports
        : selectedAirports.take(2).toList();

    return Positioned(
      top: 100,
      child: GestureDetector(
        onTap: _openSelectionSheet,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.neutral100.withOpacity(0.1),
                spreadRadius: 1,
                offset: const Offset(0, -1),
              ),
            ],
            color: AppColors.bluePrimary,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(ImagesConstant.icAirportSelection),
                  const SizedBox(width: 10),
                  ...displayAirports.map((code) => Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 12),
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primary20,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      code,
                      style: AppTextTheme.caption3Bold.copyWith(
                        color: AppColors.bluePrimary,
                      ),
                    ),
                  )),
                  if (selectedAirports.length > 3)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: AppColors.primary20,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        "${selectedAirports.length - 2}+",
                        style: AppTextTheme.caption3Bold.copyWith(
                          color: AppColors.bluePrimary,
                        ),
                      ),
                    ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.baseWhite,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
