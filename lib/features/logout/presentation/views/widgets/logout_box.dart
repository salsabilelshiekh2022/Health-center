import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/widgets/white_button.dart';
import '../../../../../generated/l10n.dart';
import 'custom_check_box.dart';

class LogoutBox extends StatelessWidget {
  const LogoutBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
          start: getScreenWidth(43),
          end: getScreenWidth(26),
          top: getScreenHeight(50),
          bottom: getScreenHeight(27)),
      width: double.infinity,
      height: getScreenHeight(448),
      decoration: ShapeDecoration(
        color: const Color(0xFF144774),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getScreenHeight(30)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              S.of(context).see_soon,
              style: TextStyles.oleoFont36White600,
            ),
          ),
          SizedBox(
            height: getScreenHeight(34),
          ),
          Text(
            textAlign: TextAlign.center,
            S.of(context).logout_message,
            style: TextStyles.font24White500,
          ),
          SizedBox(
            height: getScreenHeight(49),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).cancle,
                  style: TextStyles.font24White600,
                ),
              ),
              WhiteButton(
                title: S.of(context).comfirm_logout,
              ),
            ],
          ),
          SizedBox(height: getScreenHeight(20)),
          const CustomCheckBox()
        ],
      ),
    );
  }
}
