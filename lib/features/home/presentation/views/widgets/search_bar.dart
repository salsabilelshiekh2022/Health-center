import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 75,
      padding: const EdgeInsets.only(top: 16, left: 8, bottom: 16),
      child: TextField(
        cursorColor: AppColors.darkBlue,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.darkBlue,
          ),
          hintText: S.of(context).search,
          hintStyle: TextStyles.font18DarkBlue500.copyWith(
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.darkBlue),
          ),
          enabledBorder: inputBorder(AppColors.darkBlue),
          focusedBorder: inputBorder(AppColors.darkBlue),
          disabledBorder: inputBorder(AppColors.darkBlue),
        ),
      ),
    );
  }
}

InputBorder inputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14.0),
    borderSide: BorderSide(color: color),
  );
}
