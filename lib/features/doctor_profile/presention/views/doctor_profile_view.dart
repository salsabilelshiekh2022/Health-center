import 'package:el_amal_app/core/utils/app_assets.dart';
import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/doctor_info.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Image.asset(
                AppAssets.imagesDoctor,
                width: 170,
                height: 190,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: AppColors.primaryColor),
              child: Center(
                child: Text(
                  '12 ${S.of(context).years_of_experience}',
                  style: TextStyles.font20White400.copyWith(fontSize: 16),
                ),
              ),
            ),
            const DoctorInfo(),
          ],
        ),
      ),
    );
  }
}
