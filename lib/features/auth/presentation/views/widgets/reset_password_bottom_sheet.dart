import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'reset_password_form.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const ResetPasswordBottomSheet({super.key});

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
          height: 620,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).reset_password,
                style: TextStyles.font18DarkBlue500,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                S.of(context).reset_password_message,
                style: TextStyles.font14DarkBlue400,
              ),
              const SizedBox(
                height: 30,
              ),
              const ResetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
