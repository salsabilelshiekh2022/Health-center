import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/message_doctor/presentaion/views/message_doctor.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/mini_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../payment_options/presention/views/payment_option_view.dart';
import 'book_date_list.dart';
import 'select_time_list.dart';
import 'small_grey_button.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      transform: Matrix4.translationValues(0.0, -16.0, 0.0),
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      //height: 700,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dr: Sara Selem",
            style: TextStyles.font18DarkBlue500,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            S.of(context).speech,
            style: TextStyles.font20PrimaryColor400.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: 70,
            height: 20,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '4.8',
                  style: TextStyles.font16White400.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: 13,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            S.of(context).test_text,
            style: TextStyles.font12DarkBlue400,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            S.of(context).book_date,
            style: TextStyles.font14DarkBlue400.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookDateList(),
          const SizedBox(
            height: 14,
          ),
          Text(
            S.of(context).select_time,
            style: TextStyles.font14DarkBlue400.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 14,
          ),
          const SelectTimeList(),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallGreyButton(
                title: S.of(context).send_message,
                onTap: () {
                  AppRouter.navigateTo(const MessageDoctorView());
                },
              ),
              MiniButton(
                title: S.of(context).book_now,
                onTap: () {
                  AppRouter.navigateTo(const PaymentOptionView());
                },
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
