import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoriesName(context).length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: CategoryItem(
              title: categoriesName(context)[index],
            ),
          );
        },
      ),
    );
  }
}

List<String> categoriesName(BuildContext context) => [
      S.of(context).speech,
      S.of(context).autism,
      S.of(context).learning_difficulties,
      S.of(context).intelligence_test,
      S.of(context).behavior_modification,
      S.of(context).skills_development,
    ];
