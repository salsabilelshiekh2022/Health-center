import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'otp_field.dart';

class OTPContainer extends StatelessWidget {
  const OTPContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 65,
        padding: const EdgeInsets.only(
          top: 15,
          left: 7.5,
          right: 7.5,
          bottom: 15,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.darkBlue),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: const OtpField());
  }
}
