import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:el_amal_app/features/auth/presentation/views/widgets/welcome_text_and_white_shape.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/have_an_account.dart';
import 'widgets/sign_in_form.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
                text: S.of(context).sign_in_message,
              ),
              const SignInForm(),
              PositionedDirectional(
                top: 740,
                start: 80,
                child: HaveAnAccount(
                  text: S.of(context).do_not_have_account,
                  goTo: S.of(context).sign_up,
                  onTap: () {
                    AppRouter.navigateTo(const SignUpView());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
