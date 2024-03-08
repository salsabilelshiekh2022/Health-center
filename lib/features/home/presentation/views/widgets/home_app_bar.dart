import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/features/chats/views/chats_view.dart';
import 'package:el_amal_app/features/notification/presentation/views/notification_view.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              AppAssets.imagesLogo,
              width: 24,
              height: 30,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              S.of(context).markaz_elamal,
              style: TextStyles.peraltaFont16White400
                  .copyWith(color: AppColors.primaryColor, fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            CustomIconButton(
              icon: Icons.notifications_none_rounded,
              onTap: () {
                AppRouter.navigateTo(const NotificationView());
              },
            ),
            const SizedBox(
              width: 12,
            ),
            CustomIconButton(
              icon: Icons.chat_bubble_outline_rounded,
              onTap: () {
                AppRouter.navigateTo(const ChatsView());
              },
            )
          ],
        )
      ],
    );
  }
}
