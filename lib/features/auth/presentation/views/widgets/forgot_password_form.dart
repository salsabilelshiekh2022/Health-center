import 'package:el_amal_app/features/auth/presentation/auth_cubit/cubit/forgot_password_cubit.dart';
import 'package:el_amal_app/features/auth/presentation/views/widgets/reset_password_bottom_sheet.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/functions/validator.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: Builder(builder: (context) {
        final cubit = ForgotPasswordCubit.of(context);
        return Form(
          key: cubit.formKey,
          autovalidateMode: cubit.autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).email,
                style: TextStyles.font18DarkBlue500,
              ),
              const SizedBox(
                height: 14,
              ),
              AppTextFormField(
                fill: false,
                borderColor: AppColors.darkBlue,
                icon: Icons.email_outlined,
                prefixIconColor: AppColors.primaryColor,
                fillColor: Colors.white,
                hintText: S.of(context).email,
                validator: (value) {
                  return Validator.validateEmail(value, context);
                },
                keyBoardType: TextInputType.emailAddress,
                onSave: (data) {
                  cubit.email = data;
                },
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(
                height: 45,
              ),
              AppButton(
                title: S.of(context).go_on,
                onTap: () {
                  if (cubit.formKey.currentState!.validate()) {
                    cubit.formKey.currentState!.save();
                    Navigator.of(context).pop();
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        context: context,
                        builder: (context) {
                          return const ResetPasswordBottomSheet();
                        });
                  } else {
                    cubit.autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
