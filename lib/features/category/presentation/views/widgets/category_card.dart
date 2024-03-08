import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.image, this.onTap, required this.title});

  final String image;
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 180.w,
        height: 216.h,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, width: 166.w, height: 111.h, fit: BoxFit.fill),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyles.font16White400.copyWith(fontSize: 20.sp),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
