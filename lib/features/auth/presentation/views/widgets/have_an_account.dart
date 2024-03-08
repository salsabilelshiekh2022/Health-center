import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount(
      {super.key, this.onTap, required this.text, required this.goTo});
  final void Function()? onTap;
  final String text;
  final String goTo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyles.font20PrimaryColor400.copyWith(fontSize: 12),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            textAlign: TextAlign.center,
            goTo,
            style: TextStyles.font12DarkBlue400,
          ),
        ],
      ),
    );
  }
}
