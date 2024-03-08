import 'package:flutter/material.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../../doctor_profile/presention/views/doctor_profile_view.dart';

class DoctorListCard extends StatelessWidget {
  const DoctorListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(const DoctorProfileView());
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(top: 24, start: 24),
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr: Sara Selem',
                  style: TextStyles.font20White400.copyWith(fontSize: 17),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  S.of(context).speech,
                  style: TextStyles.font20White400
                      .copyWith(fontSize: 17, color: AppColors.grey),
                ),
                const SizedBox(
                  height: 8,
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
            Image.asset(
              AppAssets.imagesDoctor,
              height: double.infinity,
              width: 125,
            ),
          ],
        ),
      ),
    );
  }
}
