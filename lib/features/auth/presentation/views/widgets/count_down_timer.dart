import 'dart:async';

import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  CountdownTimerState createState() => CountdownTimerState();
}

class CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  int _remainingSeconds = 2 * 60; // 5 minutes

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      if (_remainingSeconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          _remainingSeconds--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int minutes = (_remainingSeconds / 60).floor();
    int seconds = (_remainingSeconds % 60).floor();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Time Reminig $minutes:${seconds.toString().padLeft(2, '0')}',
          style: TextStyles.font12DarkBlue400.copyWith(
              color:
                  _remainingSeconds == 0 ? AppColors.grey : AppColors.darkBlue),
        ),
        InkWell(
          onTap: _remainingSeconds == 0 ? () {} : () {},
          child: Text(
            S.of(context).resend_code,
            style: TextStyles.font12DarkBlue400.copyWith(
                color: _remainingSeconds != 0
                    ? AppColors.grey
                    : AppColors.primaryColor),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
