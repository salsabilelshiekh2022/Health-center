import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../../core/utils/app_colors.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 5,
      borderColor: AppColors.primaryColor,
      disabledBorderColor: AppColors.primaryColor,
      cursorColor: Colors.white,
      fieldWidth: 35,
      focusedBorderColor: Colors.white,
      filled: true,
      obscureText: true,
      autoFocus: true,
      textStyle: const TextStyle(
        color: Colors.white,
      ),
      fillColor: AppColors.primaryColor,
      enabledBorderColor: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      showFieldAsBox: true,
    );
  }
}
