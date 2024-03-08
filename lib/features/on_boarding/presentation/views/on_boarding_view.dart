import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              OnBoardingBody(),
            ],
          ),
        ),
      ),
    );
  }
}
