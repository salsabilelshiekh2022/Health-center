import 'package:el_amal_app/core/utils/app_assets.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import 'widgets/category_grid_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).category,
          style: TextStyles.font20White400,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.imagesSearchIcon,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.only(top: 30, bottom: 30, start: 22),
            child: Column(
              children: [
                CategoryGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
