import 'package:flutter/material.dart';

import '../../../data/category_model.dart';
import 'category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categoryData(context).length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsetsDirectional.only(end: 24, bottom: 15),
            child: CategoryCard(
              image: categoryData(context)[index].image,
              title: categoryData(context)[index].title,
            ));
      },
    );
  }
}
