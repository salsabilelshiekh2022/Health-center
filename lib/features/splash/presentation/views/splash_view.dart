import 'package:el_amal_app/core/database/cache/cache_helper.dart';
import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/core/services/service_locator.dart';
import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/widgets/app_text.dart';
import 'package:el_amal_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:el_amal_app/features/home/presentation/views/widgets/nav_bar.dart';
import 'package:el_amal_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;

    bool isLogin = getIt<CacheHelper>().getData(key: "user") ?? false;

    if (isLogin) {
      Future.delayed(const Duration(seconds: 2), () {
        AppRouter.navigateAndPop(const NavBarView());
      });
    } else if (isOnBoardingVisited) {
      Future.delayed(const Duration(seconds: 2), () {
        AppRouter.navigateAndPop(const SignInView());
      });
    } else {
      Future.delayed(const Duration(seconds: 2), () {
        AppRouter.navigateAndPop(const OnBoardingView());
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.imagesLogo,
              width: 178,
              height: 226,
            ),
            const SizedBox(
              height: 12,
            ),
            AppText(
              text: S.of(context).markaz_elamal,
              fontSize: 18,
              color: AppColors.darkBlue,
              fontFamily: 'Peralta',
            )
          ],
        ),
      ),
    );
  }
}
