import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 17,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(16),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '4.8',
            style: TextStyles.font16White400.copyWith(fontSize: 12),
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.star_rounded,
            color: Colors.amber,
            size: 12,
          )
        ],
      ),
    );
  }
}
