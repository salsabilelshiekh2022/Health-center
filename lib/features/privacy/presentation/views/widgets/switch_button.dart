import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryColor;
      }

      if (states.contains(MaterialState.disabled)) {
        return Colors.grey[300];
      }
      return null;
    });
    // MaterialStateProperty.all(Colors.grey[300]);
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.grey[300];
        }

        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFF336EA6);
        }

        return null;
      },
    );

    return Transform.scale(
      scale: 1,
      child: Switch(
        value: light,
        overlayColor: overlayColor,
        trackColor: trackColor,
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            // Material color when switch is selected.
            if (states.contains(MaterialState.selected)) {
              return Colors.grey[300];
            }
            // Material color when switch is disabled.
            if (states.contains(MaterialState.disabled)) {
              return Colors.white;
            }
            // Otherwise return null to set default material color
            // for remaining states such as when the switch is
            // hovered, or focused.
            return null;
          },
        ),
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            light = value;
          });
        },
      ),
    );
  }
}
