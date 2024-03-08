import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/mini_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../doctor_profile/presention/views/widgets/small_grey_button.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).current_password,
          style: TextStyles.font16DarkBlue400,
        ),
        SizedBox(
          height: getScreenHeight(3),
        ),
        AppTextFormField(
          fill: false,
          borderColor: AppColors.darkBlue,
          icon: Icons.lock_outline_rounded,
          prefixIconColor: AppColors.primaryColor,
          fillColor: Colors.white,
          hintText: S.of(context).email,
          keyBoardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: getScreenHeight(36),
        ),
        Text(
          S.of(context).New_Passward,
          style: TextStyles.font16DarkBlue400,
        ),
        SizedBox(
          height: getScreenHeight(3),
        ),
        AppTextFormField(
          fill: false,
          borderColor: AppColors.darkBlue,
          icon: Icons.lock_outline_rounded,
          prefixIconColor: AppColors.primaryColor,
          fillColor: Colors.white,
          hintText: S.of(context).email,
          keyBoardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: getScreenHeight(36),
        ),
        Text(
          S.of(context).confirm_new_passward,
          style: TextStyles.font16DarkBlue400,
        ),
        SizedBox(
          height: getScreenHeight(3),
        ),
        AppTextFormField(
          fill: false,
          borderColor: AppColors.darkBlue,
          icon: Icons.lock_outline_rounded,
          prefixIconColor: AppColors.primaryColor,
          fillColor: Colors.white,
          hintText: S.of(context).email,
          keyBoardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: getScreenHeight(40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MiniButton(
              title: S.of(context).comfirm,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            SmallGreyButton(
              title: S.of(context).cancle,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )
      ],
    );
  }
}
