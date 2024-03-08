import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class ReviewField extends StatelessWidget {
  const ReviewField({super.key, required this.maxlength, required this.height});
  final int maxlength;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(getScreenWidth(16))),
      child: TextField(
        cursorColor: AppColors.darkBlue,
        maxLines: 2,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getScreenWidth(16),
              ),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: inputBorder(Colors.white),
          focusedBorder: inputBorder(Colors.white),
          errorBorder: inputBorder(Colors.red[600]!),
          focusedErrorBorder: inputBorder(Colors.red[600]!),
          disabledBorder: inputBorder(Colors.white),
        ),
      ),
    );
  }
}
