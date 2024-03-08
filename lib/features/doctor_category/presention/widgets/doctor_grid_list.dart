import 'package:flutter/material.dart';

import 'doctor_grid_card.dart';

class DoctorGridList extends StatelessWidget {
  const DoctorGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 187 / 220,
          crossAxisSpacing: 16,
          mainAxisSpacing: 15),
      itemBuilder: (context, index) {
        return const DoctorGridCard();
      },
    );
  }
}
