import 'package:flutter/material.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../../doctor_profile/presention/views/doctor_profile_view.dart';
import 'custom_rating_bar.dart';

class DoctorInfoBox extends StatelessWidget {
  const DoctorInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(const DoctorProfileView());
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(top: 8),
        width: 120,
        height: 170,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Image.asset(
              AppAssets.imagesDoctor,
              height: 95,
              width: double.infinity,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Dr: Fatema amr",
              style: TextStyles.font22White500.copyWith(fontSize: 12),
            ),
            Text(
              "5 ${S.of(context).years_of_experience}",
              style: TextStyles.font10grey500,
            ),
            const SizedBox(
              height: 6,
            ),
            const CustomRatingBar(
              rating: 3,
            )
          ],
        ),
      ),
    );
  }
}
