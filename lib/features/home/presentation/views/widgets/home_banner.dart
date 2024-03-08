import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        "https://i.pinimg.com/564x/83/ba/2a/83ba2a32540d1900a8618c1fb0c95897.jpg",
        width: double.infinity,
        height: 150.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
