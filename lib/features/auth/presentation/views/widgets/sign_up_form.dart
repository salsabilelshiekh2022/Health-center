import 'package:el_amal_app/core/functions/validator.dart';
import 'package:el_amal_app/features/auth/presentation/views/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../../auth_cubit/sign_up_cubit/cubit.dart';
import 'auth_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Builder(builder: (context) {
        final cubit = SignUpCubit.of(context);
        return Column(
          children: [
            const SizedBox(
              height: 160,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                width: 300,
                height: 640,
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
                            cubit.name = data;
                          },
                          lable: S.of(context).name,
                          icon: Icons.account_circle_outlined,
                          keyBoardType: TextInputType.text,
                          focusNode: cubit.nameFocusNode,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () {
                            FocusScope.of(context)
                                .requestFocus(cubit.phoneFocuseNode);
                          },
                          validator: (value) {
                            return Validator.validateName(value, context);
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppTextFormField(
                          onSave: (data) {
                            cubit.phone = data;
                          },
                          lable: S.of(context).phone_number,
                          icon: Icons.account_circle_outlined,
                          keyBoardType: TextInputType.phone,
                          focusNode: cubit.phoneFocuseNode,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () {
                            FocusScope.of(context)
                                .requestFocus(cubit.emailFocusNode);
                          },
                          validator: (value) {
                            return Validator.validatePhone(value, context);
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
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
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            return Validator.validatePassword(value, context);
                          },
                          onEditingComplete: () {
                            FocusScope.of(context)
                                .requestFocus(cubit.comfirmPasswordFocuseNode);
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppTextFormField(
                          onSave: (data) {
                            cubit.comfirmPassword = data;
                          },
                          secure: true,
                          lable: S.of(context).confirm_password,
                          icon: Icons.lock_outline,
                          keyBoardType: TextInputType.emailAddress,
                          focusNode: cubit.comfirmPasswordFocuseNode,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value!.isEmpty) return 'Field is required';
                            if (value != cubit.password) {
                              return 'Password dosn\'t match';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        BlocBuilder<SignUpCubit, SignUpState>(
                          builder: (context, state) {
                            return AuthButton(
                              title: S.of(context).sign_up,
                              onTap: () {
                                cubit.register(context);
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: 12,
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
