import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/features/History_details/presentation/views/history_details.dart';
import 'package:el_amal_app/features/profile/presentation/views/widgets/profile_section.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../chats/views/chats_view.dart';
import '../../../logout/presentation/views/logout_view.dart';
import '../../../profile_details/presentation/views/profile_details_view.dart';
import '../../../settings/presentation/views/settings_view.dart';
import '../../../../core/utils/size_config.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).profile,
                  style: TextStyles.font18DarkBlue500.copyWith(fontSize: 24),
                ),
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
                const SizedBox(
                  height: 14,
                ),
                Text(
                  S.of(context).ammar_ahmed,
                  style: TextStyles.font18DarkBlue500.copyWith(fontSize: 20),
                ),
                const SizedBox(
                  height: 28,
                ),
                ProfileSection(
                  icon: Icons.access_time,
                  title: S.of(context).history,
                  onTap: () {
                    AppRouter.navigateTo(const HistoryDetails());
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ProfileSection(
                  icon: Icons.account_circle_outlined,
                  title: S.of(context).profile_detailes,
                  onTap: () {
                    AppRouter.navigateTo(const ProfileDetailsView());
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                ProfileSection(
                  icon: Icons.messenger_outline_rounded,
                  title: S.of(context).chats,
                  onTap: () {
                    AppRouter.navigateTo(const ChatsView());
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                ProfileSection(
                  icon: Icons.settings,
                  title: S.of(context).settings,
                  onTap: () {
                    AppRouter.navigateTo(const SettingsView());
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                ProfileSection(
                  icon: Icons.question_mark_rounded,
                  title: S.of(context).help,
                ),
                const SizedBox(
                  height: 28,
                ),
                ProfileSection(
                  icon: Icons.logout,
                  title: S.of(context).logout,
                  onTap: () {
                    AppRouter.navigateTo(const LogoutView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
