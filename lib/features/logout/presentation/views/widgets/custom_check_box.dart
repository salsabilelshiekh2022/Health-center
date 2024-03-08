import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: Colors.white,
          value: isChecked,
          checkColor: AppColors.darkBlue,
          side: const BorderSide(color: Colors.white),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          S.of(context).logout_all_devices,
          style:
              TextStyles.font20White500.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
