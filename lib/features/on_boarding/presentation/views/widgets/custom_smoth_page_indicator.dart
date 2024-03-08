import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomSmothPageIndicator extends StatelessWidget {
  const CustomSmothPageIndicator({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller, // PageController
        count: 3,
        effect: const ExpandingDotsEffect(
            dotWidth: 20,
            dotHeight: 11,
            radius: 16,
            spacing: 20,
            activeDotColor: AppColors.primaryColor,
            dotColor: AppColors.lightBlue),
        // your preferred effect
        onDotClicked: (index) {});
  }
}
