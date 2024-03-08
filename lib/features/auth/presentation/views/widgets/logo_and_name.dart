import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.imagesLogo,
          width: 74,
          height: 94,
        ),
        const SizedBox(height: 16),
        Text(
          S.of(context).markaz_elamal,
          style: TextStyles.peraltaFont16White400,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
