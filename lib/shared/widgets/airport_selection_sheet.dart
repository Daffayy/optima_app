import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';

import '../../screens/home/model/airport_model.dart';

class AirportSelectionSheet extends StatefulWidget {
  const AirportSelectionSheet({super.key});

  @override
  State<AirportSelectionSheet> createState() => _AirportSelectionSheetState();
}

class _AirportSelectionSheetState extends State<AirportSelectionSheet> {
  List<String> selectedCodes = [];

  bool get isAllSelected => selectedCodes.length == airports.length;

  void toggleAirport(String code) {
    setState(() {
      if (selectedCodes.contains(code)) {
        selectedCodes.remove(code);
      } else {
        selectedCodes.add(code);
      }
    });
  }

  void toggleAll() {
    setState(() {
      if (isAllSelected) {
        selectedCodes.clear();
      } else {
        selectedCodes = airports.map((a) => a.code).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Airport Area',
                  style: AppTextTheme.bodyBold,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context, selectedCodes);
                  },
                  child: Icon(
                    Icons.close,
                  ),
                ),
              ],
            ),
          ),
          if (selectedCodes.isNotEmpty) ...[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: selectedCodes.map((code) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                      color: AppColors.primary20,
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    code,
                    style: AppTextTheme.footnoteMedium
                        .copyWith(color: AppColors.bluePrimary),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
          ],
          Expanded(
            child: ListView(
              children: [
                CheckboxListTile(
                  title: const Text("All Airport"),
                  value: isAllSelected,
                  onChanged: (_) => toggleAll(),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: AppColors.bluePrimary,
                ),
                ...airports.map((airport) {
                  return CheckboxListTile(
                    title: Text(airport.code),
                    subtitle: Text(airport.name),
                    activeColor: AppColors.bluePrimary,
                    value: selectedCodes.contains(airport.code),
                    onChanged: (_) => toggleAirport(airport.code),
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
