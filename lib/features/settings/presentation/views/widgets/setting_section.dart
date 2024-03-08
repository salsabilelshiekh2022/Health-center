import '../../../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SettingSection extends StatelessWidget {
  const SettingSection(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.onTap});
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: getScreenHeight(60),
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.darkBlue),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: color,
                  ),
                  child: Center(
                      child: Icon(
                    icon,
                    color: Colors.white,
                  )),
                ),
                SizedBox(
                  width: getScreenWidth(20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.font18DarkBlue500
                          .copyWith(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      subTitle,
                      style:
                          TextStyles.font12DarkBlue400.copyWith(fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.darkBlue,
            ),
          ],
        ),
      ),
    );
  }
}
