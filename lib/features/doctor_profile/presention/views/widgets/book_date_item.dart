import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class BookDateItem extends StatelessWidget {
  const BookDateItem({super.key, required this.date, required this.isSelected});
  final String date;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      height: 40,
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? AppColors.primaryColor : AppColors.grey,
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          date,
          style: TextStyles.font14DarkBlue400.copyWith(
              fontSize: 12,
              color: isSelected ? Colors.white : AppColors.darkBlue),
        ),
      ),
    );
  }
}
