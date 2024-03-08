import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/size_config.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  // ignore: unused_field, prefer_typing_uninitialized_variables
  var _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(
          DateTime.now(),
          daysCount: 12,
          initialSelectedDate: DateTime.now(),
          height: getScreenHeight(160),
          width: getScreenWidth(60),
          selectedTextColor: AppColors.darkBlue,
          selectionColor: AppColors.grey,
          dateTextStyle: TextStyles.font16DarkBlue400
              .copyWith(fontWeight: FontWeight.w500),
          dayTextStyle: TextStyles.font16DarkBlue400
              .copyWith(fontWeight: FontWeight.w500),
          monthTextStyle: TextStyles.font16DarkBlue400
              .copyWith(fontWeight: FontWeight.w500),
          onDateChange: (date) {
            // New date selected
            setState(() {
              _selectedValue = date;
            });
          },
        ),
      ],
    );
  }
}
