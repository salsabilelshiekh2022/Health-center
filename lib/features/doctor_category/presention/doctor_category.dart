import 'package:el_amal_app/features/doctor_category/presention/doctor_category_cubit.dart/doctor_category_cubit.dart';
import 'package:el_amal_app/features/doctor_category/presention/widgets/doctor_info_list.dart';
import 'package:el_amal_app/features/home/presentation/views/widgets/header_of_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_assets.dart';
import '../../../generated/l10n.dart';
import 'widgets/doctor_book_list.dart';
import 'widgets/doctor_grid_list.dart';
import 'widgets/header_of_book_doctor.dart';

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCategoryCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_forward_ios_rounded)),
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 10, start: 16, end: 12),
                child: HeaderOfList(title: S.of(context).popular_doctor),
              ),
              const SizedBox(
                height: 8,
              ),
              const DoctorInfoList(),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                endIndent: 16,
                indent: 16,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const HeaderOfBookDoctor(),
                    const SizedBox(
                      height: 30,
                    ),
                    BlocBuilder<DoctorCategoryCubit, DoctorCategoryState>(
                        builder: (context, state) {
                      return DoctorCategoryCubit.of(context).showGridView
                          ? const DoctorGridList()
                          : const DoctorBookList();
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
