import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:el_amal_app/features/select_date_and_time/presentation/manger/select_date_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class AvailableDoctorsHeader extends StatelessWidget {
  const AvailableDoctorsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).book_doctor,
          style: TextStyles.font14DarkBlue400.copyWith(fontSize: 20),
        ),
        BlocBuilder<SelectDateCubit, SelectDateState>(
            builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: getScreenWidth(80),
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xFFEFECEC),
              borderRadius: BorderRadius.circular(getScreenWidth(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    SelectDateCubit.of(context).showGrid();
                  },
                  child: Icon(
                    CupertinoIcons.square_grid_2x2,
                    color: SelectDateCubit.of(context).showGridView
                        ? AppColors.darkBlue
                        : AppColors.lightBlue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    SelectDateCubit.of(context).showGrid();
                  },
                  child: Icon(
                    Icons.menu_rounded,
                    color: SelectDateCubit.of(context).showGridView
                        ? AppColors.lightBlue
                        : AppColors.darkBlue,
                  ),
                )
              ],
            ),
          );
        })
      ],
    );
  }
}
