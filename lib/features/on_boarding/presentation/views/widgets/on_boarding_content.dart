import 'package:flutter/material.dart';

import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/router/app_router.dart';
import '../../../../../core/services/service_locator.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/l10n.dart';
import '../../../../auth/presentation/views/sign_in_view.dart';
import '../../../data/models/on_boarding_model.dart';
import 'custom_smoth_page_indicator.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent(
      {super.key, required this.controller, required this.index});
  final PageController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 304,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 39, left: 20, right: 20),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: onBoardingDummyData(context)[index].title,
                  color: AppColors.darkBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 29,
                ),
                AppText(
                  color: AppColors.darkBlue,
                  maxLines: 4,
                  text: onBoardingDummyData(context)[index].subTitle,
                ),
                const SizedBox(
                  height: 52,
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 195,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSmothPageIndicator(
                      controller: controller,
                    ),
                    index == onBoardingDummyData(context).length - 1
                        ? GestureDetector(
                            onTap: () {
                              getIt<CacheHelper>().cacheData(
                                  key: "isOnBoardingVisited", value: true);
                              AppRouter.navigateAndPop(const SignInView());
                            },
                            child: Row(
                              children: [
                                AppText(
                                  text: S.of(context).start,
                                  fontSize: 18,
                                  color: AppColors.darkBlue,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: AppColors.darkBlue,
                                )
                              ],
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              controller.nextPage(
                                  duration: const Duration(microseconds: 200),
                                  curve: Curves.easeIn);
                            },
                            child: Row(
                              children: [
                                AppText(
                                  text: S.of(context).next,
                                  fontSize: 18,
                                  color: AppColors.darkBlue,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: AppColors.darkBlue,
                                )
                              ],
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
