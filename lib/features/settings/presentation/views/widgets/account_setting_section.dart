import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/settings/presentation/views/widgets/change_password_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:el_amal_app/generated/l10n.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../privacy/presentation/views/privacy_view.dart';
import 'setting_section.dart';

class AccountSettingsSection extends StatelessWidget {
  const AccountSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).account_settings,
            style: TextStyles.font20PrimaryColor400.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF144774),
            ),
          ),
          SizedBox(
            height: getScreenHeight(38),
          ),
          SettingSection(
            color: const Color(0xFFA6D6FF),
            icon: Icons.person_outline_rounded,
            title: S.of(context).profile_information,
            subTitle: S.of(context).name_email_security,
            onTap: () {},
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          SettingSection(
            color: const Color(0xFF9BA6FA),
            icon: Icons.safety_check_outlined,
            title: S.of(context).privacy,
            subTitle: S.of(context).name_email_security,
            onTap: () {
              AppRouter.navigateTo(const PrivacyView());
            },
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          SettingSection(
            color: const Color(0xFF00C48C),
            icon: Icons.lock_outline_rounded,
            title: S.of(context).change_password,
            subTitle: S.of(context).change_current_password,
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getScreenWidth(30))),
                  context: context,
                  builder: (context) {
                    return const ChangePasswordBottomSheet();
                  });
            },
          ),
          SizedBox(
            height: getScreenHeight(55),
          ),
        ],
      ),
    );
  }
}
