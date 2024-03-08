import 'package:el_amal_app/features/select_date_and_time/presentation/manger/select_date_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../generated/l10n.dart';

import '../../../doctor_category/presention/widgets/doctor_book_list.dart';
import '../../../doctor_category/presention/widgets/doctor_grid_list.dart';
import 'widgets/available_doctor_header.dart';
import 'widgets/custom_date_picker.dart';

class SelectDateAndTimeView extends StatelessWidget {
  const SelectDateAndTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => SelectDateCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).select_date,
            style: TextStyles.font26DarkBlue500
                .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: getScreenHeight(37), horizontal: getScreenWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).october_date,
                    style: TextStyles.font26DarkBlue500),
                SizedBox(height: getScreenHeight(34)),
                Text(S.of(context).today, style: TextStyles.font26DarkBlue500),
                SizedBox(height: getScreenHeight(24)),
                const CustomDatePicker(),
                SizedBox(height: getScreenHeight(28)),
                const Divider(thickness: 1, color: AppColors.primaryColor),
                SizedBox(height: getScreenHeight(16)),
                const AvailableDoctorsHeader(),
                SizedBox(height: getScreenHeight(12)),
                BlocBuilder<SelectDateCubit, SelectDateState>(
                    builder: (context, state) {
                  return SelectDateCubit.of(context).showGridView
                      ? const DoctorGridList()
                      : const DoctorBookList();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
