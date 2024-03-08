import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/app_colors.dart';
import 'switch_button.dart';

class PrivecySection extends StatelessWidget {
  const PrivecySection(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyles.font18DarkBlue500.copyWith(fontSize: 20.sp),
            ),
            const SwitchButton(),
          ],
        ),
        SizedBox(
          width: getScreenWidth(388),
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: subTitle,
                hintStyle: TextStyle(
                  color: const Color(0xFFACA7A7),
                  fontSize: 11.sp,
                ),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: AppColors.lightGrey,
                ))),
          ),
        )
      ],
    );
  }
}
