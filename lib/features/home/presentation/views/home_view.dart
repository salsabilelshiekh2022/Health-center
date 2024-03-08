import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/doctor_category/presention/doctor_category.dart';
import 'package:el_amal_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../generated/l10n.dart';
import 'widgets/category_list.dart';
import 'widgets/doctor_list.dart';
import 'widgets/header_of_list.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_banner.dart';
import 'widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 22),
          child: Column(
            children: [
              const HomeAppBar(),
              const SizedBox(
                height: 24,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeSearchBar(),
                  CustomIconButton(
                    icon: Icons.tune_rounded,
                    size: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeBanner(),
              SizedBox(
                height: 25.h,
              ),
              HeaderOfList(title: S.of(context).category),
              SizedBox(
                height: 16.h,
              ),
              const CategoryList(),
              const SizedBox(
                height: 24,
              ),
              HeaderOfList(
                title: S.of(context).Doctors,
                onTap: () {
                  AppRouter.navigateTo(const DoctorCategory());
                },
              ),
              const SizedBox(height: 16),
              const DoctorList(),
            ],
          ),
        ),
      )),
    );
  }
}
