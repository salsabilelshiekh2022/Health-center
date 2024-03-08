import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class SmallGreyButton extends StatelessWidget {
  const SmallGreyButton({super.key, this.onTap, required this.title});
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getScreenWidth(154),
        height: getScreenHeight(43),
        decoration: ShapeDecoration(
          color: AppColors.grey,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.darkBlue),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF454141),
            ),
          ),
        ),
      ),
    );
  }
}
