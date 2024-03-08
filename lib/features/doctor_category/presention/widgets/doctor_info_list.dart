import 'package:flutter/material.dart';

import 'doctor_info_box.dart';

class DoctorInfoList extends StatelessWidget {
  const DoctorInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.only(end: 10),
            child: DoctorInfoBox(),
          );
        },
      ),
    );
  }
}
