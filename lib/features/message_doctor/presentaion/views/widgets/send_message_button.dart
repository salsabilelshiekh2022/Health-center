import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SendMessageButton extends StatelessWidget {
  const SendMessageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(20), vertical: getScreenHeight(8)),
      color: const Color(0xFFEFECEC),
      child: TextField(
        cursorColor: AppColors.darkBlue,
        decoration: InputDecoration(
          hintText: 'Type message',
          hintStyle: TextStyles.font16DarkBlue400,
          prefixIcon: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.sentiment_satisfied_alt_rounded,
              color: AppColors.darkBlue,
              size: 30,
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
                width: getScreenWidth(60),
                height: getScreenHeight(60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getScreenWidth(30)),
                  color: AppColors.primaryColor,
                ),
                child: const Center(
                    child: Icon(
                  Icons.send_rounded,
                  size: 28,
                  color: Colors.white,
                ))),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFEFECEC),
            ),
          ),
          enabledBorder: inputBorder(const Color(0xFFEFECEC)),
          disabledBorder: inputBorder(const Color(0xFFEFECEC)),
          focusedBorder: inputBorder(const Color(0xFFEFECEC)),
        ),
      ),
    );
  }
}
