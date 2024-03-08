import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle font22White500 = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle font20White500 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle font24White500 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle font26DarkBlue500 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );
  static TextStyle font16DarkBlue400 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBlue,
  );
  static TextStyle font14DarkBlue500 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );
  static TextStyle font20DarkBlue500 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );

  static TextStyle font20White400 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static TextStyle font24White600 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle peraltaFont16White400 = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Peralta',
    fontWeight: FontWeight.w400,
  );
  static TextStyle oleoFont36White600 = TextStyle(
    color: Colors.white,
    fontSize: 40.sp,
    fontFamily: 'Oleo Script Swash Caps',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static TextStyle font16White400 = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font12DarkBlue400 = const TextStyle(
    color: AppColors.darkBlue,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font18DarkBlue500 = const TextStyle(
    color: AppColors.darkBlue,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font14DarkBlue400 = const TextStyle(
    color: AppColors.darkBlue,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font36DarkBlue600 = const TextStyle(
    color: AppColors.darkBlue,
    fontSize: 36,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font20PrimaryColor400 = const TextStyle(
    color: AppColors.primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font14LightBlue400 = const TextStyle(
    color: AppColors.lightBlue,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font10grey500 = const TextStyle(
    color: AppColors.grey,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font16Black400 = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
}
