import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import 'widgets/logout_box.dart';

class LogoutView extends StatelessWidget {
  const LogoutView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: getScreenWidth(20),
            right: getScreenWidth(20),
            top: getScreenHeight(48),
            bottom: getScreenHeight(100),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).profile,
                style: TextStyles.font26DarkBlue500,
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              Container(
                width: getScreenWidth(132),
                height: getScreenHeight(132),
                decoration: const ShapeDecoration(
                  color: AppColors.primaryColor,
                  shape: OvalBorder(),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              Text(
                S.of(context).ammar_ahmed,
                style: TextStyles.font26DarkBlue500.copyWith(fontSize: 24.sp),
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              const LogoutBox()
            ],
          ),
        ),
      ),
    );
  }
}
