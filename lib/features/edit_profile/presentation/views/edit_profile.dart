import 'package:el_amal_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/edit_profile_text_field.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).edit_profile,
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
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: getScreenHeight(28),
            horizontal: getScreenWidth(20),
          ),
          child: Column(
            children: [
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
              SizedBox(height: getScreenHeight(30)),
              EditProfileTextField(
                label: S.of(context).full_name,
                icon: Icons.account_circle_outlined,
                value: S.of(context).ammar_ahmed,
              ),
              SizedBox(height: getScreenHeight(23)),
              EditProfileTextField(
                label: S.of(context).phone_number,
                icon: Icons.account_circle_outlined,
                value: "01078654434",
              ),
              SizedBox(height: getScreenHeight(23)),
              EditProfileTextField(
                label: S.of(context).email,
                icon: Icons.mail_outline_rounded,
                value: S.of(context).ammar_gmail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
