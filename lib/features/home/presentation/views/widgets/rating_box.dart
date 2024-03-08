import 'package:flutter/material.dart';
import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.star_rate_rounded,
                color: Color(0xffFFE665), size: 16),
            const SizedBox(
              width: 5,
            ),
            Text('4.2',
                style: TextStyles.font16White400.copyWith(fontSize: 12)),
          ],
        ));
  }
}
