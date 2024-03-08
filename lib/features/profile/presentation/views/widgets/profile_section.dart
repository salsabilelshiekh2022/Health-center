import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection(
      {super.key, required this.icon, required this.title, this.onTap});

  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const ShapeDecoration(
                    color: AppColors.lightBlue,
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.darkBlue,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
