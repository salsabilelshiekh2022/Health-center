import 'package:el_amal_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingDummyData(BuildContext context) => [
      OnBoardingModel(
        image: AppAssets.imagesOnBoarding1,
        title: S.of(context).onBoarding1_title,
        subTitle: S.of(context).onBoarding1_sub_title,
      ),
      OnBoardingModel(
        image: AppAssets.imagesOnBoarding2,
        title: S.of(context).onBoarding2_title,
        subTitle: S.of(context).onBoarding2_sub_title,
      ),
      OnBoardingModel(
        image: AppAssets.imagesOnBoarding3,
        title: S.of(context).onBoarding3_title,
        subTitle: S.of(context).onBoarding3_sub_title,
      ),
    ];
