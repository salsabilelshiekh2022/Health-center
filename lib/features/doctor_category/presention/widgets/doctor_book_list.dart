import 'package:flutter/material.dart';

import 'doctor_list_card.dart';

class DoctorBookList extends StatelessWidget {
  const DoctorBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsetsDirectional.only(bottom: 24),
          child: DoctorListCard(),
        );
      },
    );
  }
}
