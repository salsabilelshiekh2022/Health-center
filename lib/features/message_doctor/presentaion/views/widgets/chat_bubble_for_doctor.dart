import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';

class ChatBubbleForDoctor extends StatelessWidget {
  const ChatBubbleForDoctor({super.key, required this.msg});
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: IntrinsicWidth(
        child: Container(
          padding:
              const EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getScreenWidth(16)),
            color: AppColors.primaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                msg,
                style:
                    TextStyles.font20DarkBlue500.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "12:25 AM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
