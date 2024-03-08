import 'package:el_amal_app/core/utils/app_assets.dart';
import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/chat_bubble_for_doctor.dart';
import 'widgets/chat_bubble_for_user.dart';
import 'widgets/send_message_button.dart';

class MessageDoctorView extends StatelessWidget {
  const MessageDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Dr: Osama ali",
          style: TextStyles.font20White400.copyWith(fontSize: 22.sp),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: getIt<CacheHelper>().getData(key: "lang") == 'en'
              ? const Icon(Icons.arrow_forward_ios_rounded)
              : const Icon(Icons.arrow_back_ios_outlined),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 7, bottom: 7, end: 16),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(getScreenWidth(30)),
                child: Image.asset(
                  AppAssets.imagesDoctor,
                  width: getScreenWidth(60),
                  height: getScreenHeight(60),
                )),
          ),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: getScreenHeight(20),
              left: getScreenWidth(20),
              right: getScreenWidth(20),
            ),
            child: ListView.builder(
                itemCount: 1,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: getScreenHeight(14)),
                    child: Column(
                      children: [
                        ChatBubleForUser(
                          msg: S.of(context).hi_doctor,
                        ),
                        SizedBox(height: getScreenHeight(14)),
                        ChatBubleForUser(
                          msg: S.of(context).patient_ask,
                        ),
                        SizedBox(height: getScreenHeight(14)),
                        ChatBubbleForDoctor(
                          msg: S.of(context).doctor_answer,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ),
        const SendMessageButton()
      ]),
    );
  }
}
