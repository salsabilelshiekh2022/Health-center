import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    fontFamily: "Poppins",
  );
}
