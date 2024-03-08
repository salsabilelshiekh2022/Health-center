import 'package:el_amal_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_text_styles.dart';
import "../../../../core/utils/size_config.dart";
import '../../../../generated/l10n.dart';
import '../../../edit_profile/presentation/views/edit_profile.dart';
import "../views/widgets/edit_text_field.dart";
import 'package:el_amal_app/core/utils/app_colors.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).profile_detailes,
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
        actions: [
          TextButton(
            onPressed: () {
              AppRouter.navigateTo(const EditProfileView());
            },
            child: Text(
              S.of(context).edit,
              style: TextStyles.font20White400,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            Container(
              width: 132,
              height: 132,
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
            SizedBox(height: getScreenHeight(60)),
            EditTextField(
                hint: S.of(context).full_name,
                title: S.of(context).ammar_ahmed),
            SizedBox(height: getScreenHeight(34)),
            EditTextField(
              hint: S.of(context).phone_number,
              title: "01078654434",
            ),
            SizedBox(height: getScreenHeight(34)),
            EditTextField(
                hint: S.of(context).email, title: S.of(context).ammar_gmail),
          ],
        ),
      ),
    );
  }
}
