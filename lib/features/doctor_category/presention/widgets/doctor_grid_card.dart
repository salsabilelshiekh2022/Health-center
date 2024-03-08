import 'package:flutter/material.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../../doctor_profile/presention/views/doctor_profile_view.dart';

class DoctorGridCard extends StatelessWidget {
  const DoctorGridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(const DoctorProfileView());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppAssets.imagesDoctor,
                width: 80, height: 90, fit: BoxFit.fill),
            Text(
              "Dr: Sara Selem",
              textAlign: TextAlign.center,
              style: TextStyles.font16White400,
            ),
            Text(
              S.of(context).speech,
              textAlign: TextAlign.center,
              style: TextStyles.font16White400.copyWith(color: AppColors.grey),
            ),
            Container(
              width: 60,
              height: 17,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(16),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '4.8',
                    style: TextStyles.font16White400.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 12,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
