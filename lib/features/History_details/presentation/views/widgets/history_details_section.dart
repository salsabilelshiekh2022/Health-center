import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class HistoryDetailsSection extends StatelessWidget {
  const HistoryDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 137,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(children: [
        Image.asset(
          AppAssets.imagesDoctor,
          width: 114,
          height: 128,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dr: Sara Selem",
              style: TextStyles.font20White400
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "9 MAR",
              style: TextStyles.font16White400
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "11:00 AM",
              style: TextStyles.font16White400
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ],
        )
      ]),
    );
  }
}
