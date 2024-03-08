import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_text_styles.dart';

import '../../../../../generated/l10n.dart';
import 'change_password_form.dart';

class ChangePasswordBottomSheet extends StatelessWidget {
  const ChangePasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: getScreenHeight(40),
          left: getScreenWidth(20),
          right: getScreenWidth(20),
          bottom: MediaQuery.of(context).viewInsets.bottom == 0
              ? getScreenHeight(40)
              : getScreenHeight(300),
        ),
        child: SizedBox(
          //height: getScreenHeight(380),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).change_password,
                style: TextStyles.font36DarkBlue600.copyWith(fontSize: 32.sp),
              ),
              SizedBox(
                height: getScreenHeight(45),
              ),
              Text(
                S.of(context).forgot_password_message,
                style: TextStyles.font14DarkBlue400,
              ),
              const SizedBox(
                height: 30,
              ),
              const ChangePasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
