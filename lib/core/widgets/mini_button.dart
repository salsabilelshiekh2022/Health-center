import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class MiniButton extends StatelessWidget {
  const MiniButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getScreenWidth(154),
        height: getScreenHeight(43),
        decoration: ShapeDecoration(
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyles.font16White400.copyWith(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
