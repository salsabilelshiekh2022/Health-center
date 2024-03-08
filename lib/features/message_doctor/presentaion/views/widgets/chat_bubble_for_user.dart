import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';

class ChatBubleForUser extends StatelessWidget {
  const ChatBubleForUser({super.key, required this.msg});
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: IntrinsicWidth(
        child: Padding(
          padding: EdgeInsetsDirectional.only(end: getScreenWidth(77)),
          child: Container(
            padding:
                const EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getScreenWidth(16)),
              color: const Color(0xFFEFECEC),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  msg,
                  style: TextStyles.font20DarkBlue500,
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "12:25 AM",
                    style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 13.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
