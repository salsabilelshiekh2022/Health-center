import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class ChatsSection extends StatelessWidget {
  const ChatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    AppAssets.imagesDoctor,
                    width: 80,
                    height: 80,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr: Sara salem",
                      style: TextStyles.font18DarkBlue500,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(S.of(context).hi_doctor,
                        style: TextStyles.font18DarkBlue500.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 16))
                  ],
                ),
              ],
            ),
            Text('12:25 AM',
                style: TextStyles.font18DarkBlue500.copyWith(fontSize: 13))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
