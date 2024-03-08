import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';
import '../utils/size_config.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({super.key, this.onTap, required this.title});
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getScreenWidth(187),
        height: getScreenHeight(47),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getScreenWidth(8))),
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
          child: Text(title, style: TextStyles.font20DarkBlue500),
        ),
      ),
    );
  }
}
