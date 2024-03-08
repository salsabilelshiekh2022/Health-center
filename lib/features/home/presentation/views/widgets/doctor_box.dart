import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/doctor_profile/presention/views/doctor_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'rating_box.dart';

class DoctorBox extends StatelessWidget {
  const DoctorBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(const DoctorProfileView());
      },
      child: Container(
        padding: EdgeInsets.all(12.w),
        width: 318.w,
        height: 270.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 12,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                ),
                Image.network(
                  'https://i.pinimg.com/564x/b9/97/a5/b997a530822d0f2c03259070d4590d45.jpg',
                  height: 100,
                  width: double.infinity,
                ),
                PositionedDirectional(
                  start: 265.w,
                  top: 8.h,
                  child: const Icon(Icons.favorite_rounded,
                      color: AppColors.primaryColor),
                ),
                const PositionedDirectional(
                    start: 8, top: 70, child: RatingBox()),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Dr: Sara Selem',
              style: TextStyles.font22White500.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 3),
            Text('12 ${S.of(context).experience}',
                style: TextStyles.font14LightBlue400),
            const SizedBox(height: 3),
            Text(
              '\$ 20.99',
              style: TextStyles.font22White500.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 3),
            Text(S.of(context).know_more, style: TextStyles.font14LightBlue400),
          ],
        ),
      ),
    );
  }
}
