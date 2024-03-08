import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            AppAssets.imagesDoctor,
            width: 60.w,
            height: 60.h,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).payment_mission,
              style: TextStyles.font14DarkBlue400.copyWith(fontSize: 14.sp),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              " 12:25 AM",
              style: TextStyles.font12DarkBlue400.copyWith(fontSize: 13.sp),
            )
          ],
        ),
      ],
    );
  }
}
