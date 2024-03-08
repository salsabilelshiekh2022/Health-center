import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:el_amal_app/core/widgets/white_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

import 'custom_rating_bar.dart';
import 'review_field.dart';

class RateAlart extends StatelessWidget {
  const RateAlart({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF144774),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(getScreenWidth(16)),
      ),
      title: Text(
        S.of(context).Send_your_ratting,
        textAlign: TextAlign.start,
        style: TextStyles.font24White600,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomRatingBar(),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Text(
            S.of(context).your_comment,
            style: TextStyles.font16White400,
          ),
          SizedBox(
            height: getScreenHeight(12),
          ),
          ReviewField(
            maxlength: 2,
            height: getScreenHeight(73),
          ),
        ],
      ),
      actions: [
        SizedBox(
          height: getScreenHeight(25),
        ),
        Center(
            child: WhiteButton(
          title: S.of(context).submit,
          onTap: () {
            Navigator.of(context).pop();
          },
        )),
        SizedBox(
          height: getScreenHeight(25),
        )
      ],
    );
  }
}
