import 'package:el_amal_app/features/settings/presentation/views/widgets/rate_alart.dart';
import 'package:el_amal_app/features/settings/presentation/views/widgets/send_feed_back_alart.dart';
import 'package:flutter/material.dart';
import 'package:el_amal_app/generated/l10n.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';
import 'setting_section.dart';

class GeneralSettingsSection extends StatelessWidget {
  const GeneralSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).General,
            style: TextStyles.font20PrimaryColor400.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF144774),
            ),
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          SettingSection(
            color: const Color(0xFFF6BB86),
            icon: Icons.favorite_outline_rounded,
            title: S.of(context).rate_app,
            subTitle: S.of(context).rate_and_review,
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const RateAlart();
                  });
            },
          ),
          SizedBox(
            height: getScreenHeight(30),
          ),
          SettingSection(
            color: const Color(0xFFFFDF92),
            icon: Icons.mail_outline_rounded,
            title: S.of(context).send_feedback,
            subTitle: S.of(context).share_your_thought,
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const SendFeedBackAlart();
                  });
            },
          ),
        ],
      ),
    );
  }
}
