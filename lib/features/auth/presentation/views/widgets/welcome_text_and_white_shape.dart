import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class WelcomeTextAndBoxShape extends StatelessWidget {
  const WelcomeTextAndBoxShape(
      {super.key, required this.text, this.height = 488});
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, top: 30),
          child: Text(
            text,
            style: TextStyles.font22White500,
          ),
        ),
        const SizedBox(
          height: 190,
        ),
        Container(
          width: double.infinity,
          height: height,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
