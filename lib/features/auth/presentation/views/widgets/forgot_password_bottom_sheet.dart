import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'forgot_password_form.dart';

class ForgotPasswordBottomSheet extends StatelessWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 47,
          left: 26,
          right: 26,
          bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 47 : 300,
        ),
        child: SizedBox(
          height: 380,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).forgot_password,
                style: TextStyles.font18DarkBlue500,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                S.of(context).forgot_password_message,
                style: TextStyles.font14DarkBlue400,
              ),
              const SizedBox(
                height: 30,
              ),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
