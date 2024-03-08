import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/features/auth/presentation/views/widgets/otp_container.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../congratulation_view.dart';
import 'count_down_timer.dart';

class CustomAlart extends StatelessWidget {
  const CustomAlart({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        S.of(context).code_send,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppColors.darkBlue),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).enter_code,
            style: TextStyles.font14DarkBlue400.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          const OTPContainer(),
          const SizedBox(
            height: 3,
          ),
          const CountdownTimer(),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
              AppRouter.navigateAndPop(const CongratulationView());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  S.of(context).done,
                  style:
                      TextStyles.font20PrimaryColor400.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.primaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
