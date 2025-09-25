import 'package:flutter/material.dart';
import 'package:test_godigi_apps/config/app_colors.dart';
import 'package:test_godigi_apps/config/app_text_theme.dart';
import 'package:test_godigi_apps/config/strings.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OtpTimerComponent extends StatefulWidget {
  final VoidCallback onTimerFinished;

  const OtpTimerComponent({
    super.key,
    required this.onTimerFinished,
  });

  @override
  State<OtpTimerComponent> createState() => _OtpTimerComponentState();
}

class _OtpTimerComponentState extends State<OtpTimerComponent> {
  final CountdownController countdownController = CountdownController(autoStart: true);

  @override
  Widget build(BuildContext context) {
    return Countdown(
      controller: countdownController,
      seconds: 60,
      build: (_, double time) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.otpResendIn,
              style: AppTextTheme.caption1Reguler.copyWith(color: AppColors.neutral60),
            ),
            Text(
              '00:${time.toInt().toString().padLeft(2, '0')}',
              style: AppTextTheme.caption1Reguler.copyWith(color: AppColors.neutral60),
            ),
          ],
        );
      },
      onFinished: () {
        widget.onTimerFinished.call();
        debugPrint('timer done');
      },
    );
  }
}