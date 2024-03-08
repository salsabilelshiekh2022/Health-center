import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:el_amal_app/core/widgets/white_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

import 'review_field.dart';

class SendFeedBackAlart extends StatelessWidget {
  const SendFeedBackAlart({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF144774),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(getScreenWidth(16)),
      ),
      title: Text(
        S.of(context).send_your_feedback,
        textAlign: TextAlign.start,
        style: TextStyles.font24White600.copyWith(fontSize: 22.sp),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).have_suggestion,
            style: TextStyles.font16White400.copyWith(fontSize: 15.sp),
          ),
          SizedBox(
            height: getScreenHeight(28),
          ),
          ReviewField(
            maxlength: 5,
            height: getScreenHeight(135),
          ),
        ],
      ),
      actions: [
        SizedBox(
          height: getScreenHeight(25),
        ),
        Center(
            child: WhiteButton(
          title: S.of(context).send_feedback,
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
