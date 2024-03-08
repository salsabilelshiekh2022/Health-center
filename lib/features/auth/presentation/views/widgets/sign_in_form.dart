import 'package:el_amal_app/core/functions/validator.dart';
import 'package:el_amal_app/features/auth/presentation/auth_cubit/sign_in_cubit/cubit.dart';
import 'package:el_amal_app/features/auth/presentation/views/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'auth_button.dart';
import 'forgot_password_bottom_sheet.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Builder(builder: (context) {
        final cubit = SignInCubit.of(context);
        return Column(
          children: [
            const SizedBox(
              height: 160,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                width: 300,
                height: 430,
                decoration: ShapeDecoration(
                  color: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 8, color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Form(
                  key: cubit.formKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const LogoAndName(),
                        AppTextFormField(
                          onSave: (data) {
                            cubit.email = data;
                          },
                          lable: S.of(context).email,
                          icon: Icons.email_outlined,
                          keyBoardType: TextInputType.emailAddress,
                          focusNode: cubit.emailFocusNode,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () {
                            FocusScope.of(context)
                                .requestFocus(cubit.passwordFocusNode);
                          },
                          validator: (value) {
                            return Validator.validateEmail(value, context);
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppTextFormField(
                          lable: S.of(context).password,
                          icon: Icons.lock_outline,
                          onSave: (data) {
                            cubit.password = data;
                          },
                          keyBoardType: TextInputType.visiblePassword,
                          secure: true,
                          focusNode: cubit.passwordFocusNode,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            return Validator.validatePassword(value, context);
                          },
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        BlocBuilder<SignInCubit, SignInState>(
                          builder: (context, state) {
                            return AuthButton(
                              title: S.of(context).sign_in,
                              onTap: () {
                                cubit.login(context);
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0)),
                                context: context,
                                builder: (context) {
                                  return const ForgotPasswordBottomSheet();
                                });
                          },
                          child: Text(
                            S.of(context).forgot_password,
                            style: TextStyles.font16White400
                                .copyWith(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
