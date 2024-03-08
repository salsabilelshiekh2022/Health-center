import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/features/home/presentation/views/widgets/nav_bar.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_router.dart';

class CongratulationView extends StatefulWidget {
  const CongratulationView({super.key});

  @override
  State<CongratulationView> createState() => _CongratulationViewState();
}

class _CongratulationViewState extends State<CongratulationView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      AppRouter.navigateAndPop(const NavBarView());
    });
    super.initState();
  }

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
                  S.of(context).success_register,
                  textAlign: TextAlign.center,
                  style: TextStyles.font18DarkBlue500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
