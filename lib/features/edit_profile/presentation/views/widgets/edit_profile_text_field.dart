import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';

class EditProfileTextField extends StatelessWidget {
  const EditProfileTextField(
      {super.key,
      required this.label,
      required this.value,
      required this.icon});
  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.font16DarkBlue400,
        ),
        SizedBox(height: getScreenHeight(5)),
        SizedBox(
          height: getScreenHeight(45),
          child: Padding(
            padding: EdgeInsets.only(bottom: getScreenHeight(7)),
            child: TextFormField(
              cursorColor: AppColors.darkBlue,
              initialValue: value,
              style: TextStyles.font16Black400,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                prefixIcon: Icon(
                  icon,
                  color: AppColors.darkBlue,
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.darkBlue, width: 1),
                  borderRadius: BorderRadius.circular(
                    getScreenWidth(14),
                  ),
                ),
                enabledBorder: inputBorder(AppColors.darkBlue),
                focusedBorder: inputBorder(AppColors.darkBlue),
                errorBorder: inputBorder(Colors.red[600]!),
                focusedErrorBorder: inputBorder(Colors.red[600]!),
                disabledBorder: inputBorder(AppColors.darkBlue),
              ),
            ),
          ),
        )
      ],
    );
  }
}

InputBorder inputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14.0),
    borderSide: BorderSide(color: color),
  );
}
