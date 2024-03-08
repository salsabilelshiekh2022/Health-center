import 'package:el_amal_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class CategoryModel {
  final String image;
  final String title;

  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> categoryData(BuildContext context) => [
      CategoryModel(
        image: AppAssets.imagesSpeech,
        title: S.of(context).speech,
      ),
      CategoryModel(
        image: AppAssets.imagesAutism,
        title: S.of(context).autism,
      ),
      CategoryModel(
        image: AppAssets.imagesLearningDifficulties,
        title: S.of(context).learning_difficulties,
      ),
      CategoryModel(
        image: AppAssets.imagesIntelligenceTest,
        title: S.of(context).intelligence_test,
      ),
      CategoryModel(
        image: AppAssets.imagesBehaviorModification,
        title: S.of(context).behavior_modification,
      ),
      CategoryModel(
        image: AppAssets.imagesSkillsDevelopment,
        title: S.of(context).skills_development,
      ),
    ];
