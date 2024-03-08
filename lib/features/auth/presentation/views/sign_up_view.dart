import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import 'widgets/have_an_account.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/welcome_text_and_white_shape.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Stack(
            children: [
              WelcomeTextAndBoxShape(
                text: S.of(context).sign_up_message,
                height: 560,
              ),
              const SignUpForm(),
              PositionedDirectional(
                top: 810,
                start: 80,
                child: Column(
                  children: [
                    HaveAnAccount(
                      text: S.of(context).already_have_account,
                      goTo: S.of(context).sign_in,
                      onTap: () {
                        AppRouter.navigateAndPop(const SignInView());
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
