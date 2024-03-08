import 'package:flutter/material.dart';
import "../../../../../core/utils/app_colors.dart";
import "../../../../../core/utils/app_text_styles.dart";
import "../../../../../core/utils/size_config.dart";

class EditTextField extends StatelessWidget {
  const EditTextField({super.key, required this.hint, required this.title});
  final String hint;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          enabled: false,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(
                color: AppColors.lightGrey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                width: 1,
                color: AppColors.lightGrey,
              ))),
        ),
        SizedBox(height: getScreenHeight(10)),
        Text(title, style: TextStyles.font16Black400),
      ],
    );
  }
}
