import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:el_amal_app/core/widgets/mini_button.dart';
import 'package:flutter/material.dart';
import 'widgets/privacy_section.dart';
import '../../../../core/database/cache/cache_helper.dart';
import 'package:el_amal_app/generated/l10n.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../doctor_profile/presention/views/widgets/small_grey_button.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).privacy,
          style: TextStyles.font20White400,
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
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getScreenHeight(45),
              ),
              Text(
                S.of(context).privacy_preferences,
                style: TextStyles.font18DarkBlue500.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: getScreenHeight(28),
              ),
              Text(
                S.of(context).privacy_message,
                style: TextStyles.font16Black400.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: getScreenHeight(43),
              ),
              PrivecySection(
                  title: S.of(context).name,
                  subTitle: S.of(context).ammar_ahmed),
              SizedBox(
                height: getScreenHeight(20),
              ),
              PrivecySection(
                  title: S.of(context).phone_number, subTitle: "01078654434"),
              SizedBox(
                height: getScreenHeight(20),
              ),
              PrivecySection(
                  title: S.of(context).email,
                  subTitle: S.of(context).ammar_gmail),
              SizedBox(
                height: getScreenHeight(20),
              ),
              PrivecySection(
                  title: S.of(context).recommendations,
                  subTitle: S.of(context).recommendation_subtitle),
              SizedBox(
                height: getScreenHeight(78),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MiniButton(title: S.of(context).save_preferences),
                  SmallGreyButton(
                    title: S.of(context).cancle,
                  ),
                ],
              ),
              SizedBox(
                height: getScreenHeight(142),
              )
            ],
          ),
        ),
      ),
    );
  }
}
