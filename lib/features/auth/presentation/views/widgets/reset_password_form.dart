import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'otp_container.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      //key: keyx,
      // autovalidateMode: cubit.autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).enter_5_digits_code,
            style: TextStyles.font18DarkBlue500.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 14,
          ),
          const OTPContainer(),
          const SizedBox(
            height: 14,
          ),
          Text(
            S.of(context).password,
            style: TextStyles.font18DarkBlue500.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 14,
          ),
          AppTextFormField(
            fill: false,
            borderColor: AppColors.darkBlue,
            icon: Icons.lock,
            prefixIconColor: AppColors.primaryColor,
            fillColor: Colors.white,
            hintText: "Password",
            secure: true,
            keyBoardType: TextInputType.visiblePassword,
            onSave: (data) {},
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            S.of(context).confirm_password,
            style: TextStyles.font18DarkBlue500.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 14,
          ),
          AppTextFormField(
            secure: true,
            fill: false,
            borderColor: AppColors.darkBlue,
            icon: Icons.lock,
            prefixIconColor: AppColors.primaryColor,
            fillColor: Colors.white,
            hintText: "Comfirm password",
            keyBoardType: TextInputType.visiblePassword,
            onSave: (data) {},
            textInputAction: TextInputAction.done,
          ),
          const SizedBox(
            height: 45,
          ),
          AppButton(
            title: S.of(context).reset_password,
            onTap: () {
              AppRouter.navigateAndPop(const SignInView());
            },
          ),
        ],
      ),
    );
  }
}
