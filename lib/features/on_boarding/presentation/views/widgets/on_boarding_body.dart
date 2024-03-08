import 'package:flutter/material.dart';

import '../../../data/models/on_boarding_model.dart';
import 'on_boarding_app_bar.dart';
import 'on_boarding_content.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({
    super.key,
  });

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 775,
      child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: controller,
          itemCount: onBoardingDummyData(context).length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                OnBoardingAppBar(
                  index: index,
                ),
                const SizedBox(
                  height: 73,
                ),
                Image.asset(
                  onBoardingDummyData(context)[index].image,
                  width: 298,
                  height: 298,
                ),
                const SizedBox(
                  height: 40,
                ),
                OnBoardingContent(
                  controller: controller,
                  index: index,
                ),
              ],
            );
          }),
    );
  }
}
