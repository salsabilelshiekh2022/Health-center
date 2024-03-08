import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/l10n.dart';

class HeaderOfList extends StatelessWidget {
  const HeaderOfList({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font14DarkBlue400.copyWith(fontSize: 24.sp),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              AppText(
                text: S.of(context).see_all,
                fontSize: 20.sp,
                color: AppColors.darkBlue,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.darkBlue,
              )
            ],
          ),
        )
      ],
    );
  }
}
