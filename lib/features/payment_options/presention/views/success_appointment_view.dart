import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/home/presentation/views/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/mini_button.dart';
import '../../../../generated/l10n.dart';

class SuccessAppointmentView extends StatelessWidget {
  const SuccessAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check_circle_rounded,
                  size: 200,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 45,
                ),
                Text(
                  S.of(context).congratulations,
                  style: TextStyles.font36DarkBlue600,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  S.of(context).success_payment,
                  textAlign: TextAlign.center,
                  style: TextStyles.font18DarkBlue500,
                ),
                const SizedBox(height: 70),
                MiniButton(
                  title: S.of(context).back,
                  onTap: () {
                    AppRouter.navigateAndPop(const NavBarView());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
